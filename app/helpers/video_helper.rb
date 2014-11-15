module VideoHelper
  def video(url)
    content_tag :p, class: 'movie' do
      # TODO: Open in fancybox!
      link_to 'https://www.youtube.com/watch?v=L4VamzsV3Uk', target: '_blank' do
        icon(:film) + '&nbsp;Watch the video'.html_safe
      end
    end
  end
end