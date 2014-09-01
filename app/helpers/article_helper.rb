# = article do |a|
#   = a.title do
#     ' titttttel with a date:
#     date 12-24-2014
#
#   = a.slogan do
#     ' This is a really
#     strong' cool
#     ' article!
#
#   = a.content do
#     p some paragraph
#
#     ul
#       li item 1
#       li item 2
#
# = partial_with_block_locals 'article' do |p|
#   - p.local :title do
#     | Titel
#
#   - p.local :slogan do
#     | Slogan
#
#   - p.local :content do
#     | Content

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