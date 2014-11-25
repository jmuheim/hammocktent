module VideoHelper
  def video(url)
    content_tag :p, class: 'movie' do
      # TODO: Open in fancybox!
      link_to url, target: '_blank' do
        icon(:film) + '&nbsp;Watch the video'.html_safe
      end
    end
  end
end