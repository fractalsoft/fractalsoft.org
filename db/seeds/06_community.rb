def facebook_iframe(url, height: 280, width: 500)
  escaped_url = CGI.escape(url)
  params = [
    "href=#{escaped_url}",
    "width=#{width}",
    'show_text=false',
    "height=#{height}",
    'appId'
  ].join('&')
  video_url = "https://www.facebook.com/plugins/video.php?#{params}"
  <<~FACEBOOK.chomp
    <div class='embed-responsive embed-responsive-16by9'>
      <iframe class='embed-responsive-item'
              src='#{video_url}'
              width='500'
              height='280'
              style='border:none;overflow:hidden'
              scrolling='no'
              frameborder='0'
              allowTransparency='true'
              allow='encrypted-media'
              allowFullScreen='true'
      ></iframe>
    </div>
    <br>
  FACEBOOK
end

def vimeo_iframe(url)
  <<~VIMEO.chomp
    <div class='embed-responsive embed-responsive-16by9'>
      <iframe class='embed-responsive-item'
              src='#{url}'
              width='940'
              height='562'
              frameborder='0'
              webkitallowfullscreen
              mozallowfullscreen
              allowfullscreen
      ></iframe>
    </div>
    <br>
  VIMEO
end

def youtube_iframe(url)
  <<~YOUTUBE.chomp
    <div class='embed-responsive embed-responsive-16by9'>
      <iframe class='embed-responsive-item'
              src='#{url}'
              width='940'
              height='529'
              frameborder='0'
              allowfullscreen
      ></iframe>
    </div>
    <br>
    )
  YOUTUBE
end

require_relative 'community/railsgirls'
require_relative 'community/srug'
require_relative 'community/coderdojo'
require_relative 'community/ggj'
