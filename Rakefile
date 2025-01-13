require 'bundler/setup'
require 'dotenv/tasks'

namespace :jekyll do
  desc 'Build the Jekyll site'
  task build: :dotenv do
    sh "bundle exec jekyll build --incremental"
  end
  task serve: :dotenv do
    sh "bundle exec jekyll serve --incremental"
  end
end

