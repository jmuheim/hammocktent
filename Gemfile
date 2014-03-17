source 'https://rubygems.org'

gem 'rails', '4.0.3'

gem 'sqlite3' # Use sqlite3 as the database for Active Record

gem 'slim-rails' # Awesome template language that replaces ERB

gem 'uglifier', '>= 1.3.0' # Use Uglifier as compressor for JavaScript assets

gem 'coffee-rails', '~> 4.0.0' # Use CoffeeScript for .js.coffee assets and views

gem 'sass-rails', '~> 4.0.0' # Use Sass for stylesheets

gem 'compass-rails' # Compass framework

gem 'bootstrap-sass' # Sleek, intuitive, and powerful front-end framework for faster and easier web development

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

gem 'jquery-rails' # Use jquery as the JavaScript library

gem 'turbolinks' # Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks

gem 'jbuilder', '~> 1.2' # Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder

# Flexible authentication solution
gem 'devise'
# gem 'devise-i18n' # Translations

gem 'cancancan' # Authorization library which restricts what resources a given user is allowed to access

gem 'rolify' # Manage roles of users

# Inherit RESTful actions in controllers
gem 'inherited_resources', '>= 1.4.1'
gem 'has_scope' # Maps controller filters to resource scopes
gem 'responders' # A set of Rails responders

gem 'cells' # View components

gem 'simple_form' # Forms made easy for Rails

gem 'gaffe' # Handles Rails error pages in a clean, simple way

group :doc do
  gem 'sdoc', require: false # bundle exec rake doc:rails generates the API under doc/api.
end

group :development, :test do
  # Testing tool for the Ruby programming language
  gem 'rspec'
  gem 'rspec-rails'      # RSpec for Rails

  # Data generation
  gem 'factory_girl_rails' # Test data generator
  gem 'ffaker'             # Easily generate fake data

  # Use Pry and its extensions instead of IRB
  gem 'jazz_hands', github: 'nixme/jazz_hands',
                    branch: 'bring-your-own-debugger'
  gem 'pry-byebug'      # Pry navigation commands via debugger (formerly ruby-debug)
  gem 'pry-remote-auto' # Automatically opens a remote pry session in a terminal
end

group :development do
  gem 'quiet_assets' # Turns off assets pipeline log

  # Better Errors: Replaces the standard Rails error page with a more useful one
  gem 'better_errors'
  gem 'binding_of_caller' # Needed by better_errors to enable html console

  gem 'xray-rails' # Reveals your UI's bones with Cmd-X/Ctrl-X

  # Rails application preloader
  gem 'spring', github: 'guard/spring',
                branch: 'listen2' # https://github.com/rails/spring/pull/194
  gem 'spring-commands-rspec' # Commands for RSpec
  gem 'listen'                # Event based file system listening (instead of polling)

  # Guard: automatically run commands when files are changed
  gem 'guard'
  gem 'guard-rspec', require: false      # Automatically run tests
  gem 'terminal-notifier-guard'          # Mac OS X User Notifications for Guard
  gem 'guard-livereload', require: false # Automatically reload your browser when 'view' files are modified
  gem 'guard-bundler'                    # Automatically install/update gem bundle when needed
  gem 'guard-annotate'                   # Automatically run the annotate gem when needed
  gem 'guard-migrate'                    # Automatically run migrations when they are edited
  gem 'guard-shell'                      # Automatically runs shell commands

  gem 'rack-livereload' # Enable LiveReload in Rails

  gem 'rb-fsevent', require: false # FSEvents API with signals handled

  gem 'rubocop', require: false # A robust Ruby code analyzer, based on the community Ruby style guide

  gem 'rip_hashrocket', # Replace hashrockets (=>) automatically
       github:  'jmuheim/rip_hashrocket',
       require: false

  gem 'capybara' # Acceptance test framework for web applications

  gem 'rails-footnotes'
end

group :test do
  gem 'respec', require: false # Allows to rerun failed specs (first do `respec` to run all, then `respec f` or `respec 123` to run failed)

  gem 'fuubar' # The instafailing RSpec progress bar formatter

  gem 'email_spec' # Collection of RSpec matchers for testing email

  gem 'shoulda-matchers' # Collection of RSpec matchers

  gem 'database_cleaner' # Resets test database after each test

  # Capybara - Headless, JavaScript-executing browser for Selenium
  gem 'poltergeist'        # PhantomJS driver for Capybara
  gem 'launchy'            # Use `save_and_open_page` in request tests to automatically open a browser
  gem 'selenium-webdriver' # Selenium webdriver (needed to use Chrome driver)

  gem 'turnip'

  gem 'capybara-screenshot' # Automatically save screen shots when a scenario fails

  gem 'rspec-cells' # Test cells using RSpec

  gem 'headhunter' # Automagically validates all HTML and CSS during the acceptance tests

  gem 'coveralls', require: false
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.1.2'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]