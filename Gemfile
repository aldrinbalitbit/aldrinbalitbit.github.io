source "https://rubygems.org"

gem 'tzinfo-data'
gem "webrick", "~> 1.7", group: :development
gem 'wdm', '~> 0.1.0' if Gem.win_platform?

gem "jekyll", group: :jekyll_plugins
group :jekyll_plugins do
  gem "jekyll-paginate"
  gem "jekyll-sitemap"
  gem "jekyll-feed"
  gem "jekyll-include-cache"
  gem "jekyll-remote-theme"
  gem "jekyll-github-metadata"
  gem 'kramdown-parser-gfm'
end

group :development do
  gem 'dotenv'
  gem 'google-apis-youtube_v3'
  gem "image_processing", "~> 1.0"
end
