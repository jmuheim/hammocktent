# Enable only on Travis, to prevent slowing down local specs.
# See https://github.com/hamstergem/hamster/pull/79/files
if ENV['TRAVIS']
  require 'coveralls'
  Coveralls.wear!
end

ENV['RAILS_ENV'] ||= 'test'

require File.expand_path('../../config/environment', __FILE__)
require 'rspec/rails'
require 'capybara/poltergeist'
require 'email_spec'
require 'cancan/matchers'
require 'poltergeist_warnings_suppressor'

# Requires supporting ruby files with custom matchers and macros, etc,
# in spec/support/ and its subdirectories.
Dir[Rails.root.join('spec/support/**/*.rb')].each { |f| require f }

# Checks for pending migrations before tests are run.
# If you are not using ActiveRecord, you can remove this line.
ActiveRecord::Migration.check_pending! if defined?(ActiveRecord::Migration)

Capybara.register_driver :chrome do |app|
  args = []
  args << '--disable-translate' # Remove the annoying translation suggestion on every page load
  Capybara::Selenium::Driver.new(app, browser: :chrome, args: args)
end

Capybara.register_driver :poltergeist do |app|
  Capybara::Poltergeist::Driver.new(app, phantomjs_logger: WarningsSuppressor)
end

Capybara.javascript_driver = :poltergeist # use 'driver: :chrome' (like 'js: true') if you need the dev tools for specific specs

RSpec.configure do |config|
  # If you're not using ActiveRecord, or you'd prefer not to run each of your
  # examples within a transaction, remove the following line or assign false
  # instead of true.
  config.use_transactional_fixtures = false

  # If true, the base class of anonymous controllers will be inferred
  # automatically. This will be the default behavior in future versions of
  # rspec-rails.
  config.infer_base_class_for_anonymous_controllers = false

  # Run specs in random order to surface order dependencies. If you find an
  # order dependency and want to debug it, you can fix the order by providing
  # the seed, which is printed after each run.
  #     --seed 1234
  config.order = 'random'

  config.include FactoryGirl::Syntax::Methods

  config.include SelectDateAndTime, type: :feature
end

# DatabaseCleaner configuration as described here: http://devblog.avdi.org/2012/08/31/configuring-database_cleaner-with-rails-rspec-capybara-and-selenium/
RSpec.configure do |config|
  config.before(:suite) do
    DatabaseCleaner.clean_with(:truncation)
  end

  config.before(:each) do |example|
    DatabaseCleaner.strategy = if example.metadata[:js] ||
                                  example.metadata[:chrome] ||
                                  example.metadata[:selenium]
                                 :truncation # Otherwise we get an SQLite3::BusyException because more than one thread try to modify the database, see http://stackoverflow.com/questions/12326096
                               else
                                 :transaction
                               end

    DatabaseCleaner.start
  end

  config.after(:each) do
    DatabaseCleaner.clean
  end
end

# Configuration for email_spec gem
RSpec.configure do |config|
  if defined?(ActionMailer)
    unless [:test, :activerecord, :cache, :file].include?(ActionMailer::Base.delivery_method)
      ActionMailer::Base.register_observer(EmailSpec::TestObserver)
    end
    ActionMailer::Base.perform_deliveries = true

    config.before(:each) do
      case ActionMailer::Base.delivery_method
        when :test then ActionMailer::Base.deliveries.clear
        when :cache then ActionMailer::Base.clear_cache
      end
    end
  end

  config.after(:each) do
    EmailSpec::EmailViewer.save_and_open_all_raw_emails if ENV['SHOW_EMAILS']
    EmailSpec::EmailViewer.save_and_open_all_html_emails if ENV['SHOW_HTML_EMAILS']
    EmailSpec::EmailViewer.save_and_open_all_text_emails if ENV['SHOW_TEXT_EMAILS']
  end

  config.include EmailSpec::Helpers
  config.include EmailSpec::Matchers
end

RSpec.configure do |config|
  config.filter_run focus: true # Use fit/xit to focus/filter specs!
  config.run_all_when_everything_filtered = true
end

# Set locale for feature specs, see https://github.com/rspec/rspec-rails/issues/255#issuecomment-24698753
RSpec.configure do |config|
  config.before(:each, type: :feature) do
    default_url_options[:locale] = I18n.default_locale
  end
end

# RSpec 3 doesn't infer spec type automatically anymore, see https://github.com/rspec/rspec-core/issues/1540
RSpec.configure do |config|
  config.infer_spec_type_from_file_location!
end
