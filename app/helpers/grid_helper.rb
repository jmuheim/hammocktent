# = grid do |g|
#   = g.three_columns do |tc|
#     = tc.first_column do
#       | This is the content of the first column!
#
#     = tc.second_column do
#       | This is the content of the center column!
#
#     = tc.third_column do
#       | This is the content of the third column!

module GridHelper
  def grid(&block)
    Grid.new(self, block).render
  end

  class Grid < Struct.new(:view, :callback)
    delegate :content_tag, to: :view

    def render
      view.capture(self, &callback)
    end

    def three_columns(&block)
      ThreeColumns.new(view, block).render
    end

    class ThreeColumns < Grid
      def render
        content_tag :section, class: 'three_columns' do
          view.capture(self, &callback)
        end
      end

      def first_column(&block)
        content_tag :div, class: 'first_column' do
          view.capture(self, &block)
        end
      end

      def second_column(&block)
        content_tag :div, class: 'second_column' do
          view.capture(self, &block)
        end
      end

      def third_column(&block)
        content_tag :div, class: 'third_column' do
          view.capture(self, &block)
        end
      end
    end
  end
end