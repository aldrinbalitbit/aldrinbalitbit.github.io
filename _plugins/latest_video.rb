require 'google/apis/youtube_v3'

module Jekyll
  class LatestVideo < Liquid::Tag
    def render(context)
      api_key = ENV['YOUTUBE_API_KEY'] # Ensure your YouTube API key is set in the environment
      youtube = Google::Apis::YoutubeV3::YouTubeService.new
      youtube.key = "#{api_key}"

      begin
        response = youtube.list_playlist_items(
          'snippet',
          playlist_id: 'PLmKL4kohLvYbjAKJlaRcNNUc2n6_D2P3c',
          max_results: 1
        )
        item = response.items.sort_by { |item|
          item.snippet.published_at
        }
        video = item.last
        video_id = video.snippet.resource_id.video_id
      end

      return video_id
    end
  end
end

Liquid::Template.register_tag('latest_video', Jekyll::LatestVideo)
