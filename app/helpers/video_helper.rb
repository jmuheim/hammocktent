module VideoHelper
  def video_link(url)
    content_tag :p, class: 'movie' do
      # TODO: Open in fancybox!
      link_to url, target: '_blank' do
        icon(:film) + t('helpers.video.watch_the_video').html_safe # TODO: Add i18n "helpers" namespace so we can use t('.video.watch_the_video')
      end
    end
  end
end
