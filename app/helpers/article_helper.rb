module ArticleHelper
  def article(&block)
    Article.new(self, block).render
  end

  class Article < Struct.new(:view, :callback)
    delegate :content_tag, to: :view

    def render
      content_tag :article do
        view.capture(self, &callback)
      end
    end

    def title(&block)
      content_tag :div, class: 'title' do
        view.capture(self, &block)
      end
    end

    def slogan(&block)
      content_tag :div, class: 'slogan' do
        view.capture(self, &block)
      end
    end

    def content(&block)
      content_tag :div, class: 'content' do
        view.capture(self, &block)
      end
    end
  end
end