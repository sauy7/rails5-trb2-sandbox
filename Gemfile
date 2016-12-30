source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'cells-erb'
gem 'coffee-rails', '~> 4.2'
gem 'dry-validation'
gem 'jquery-rails'
gem 'puma', '~> 3.0'
gem 'pundit'
gem 'rails', '~> 5.0.1'
gem 'sass-rails', '~> 5.0'
gem 'sqlite3'
gem 'trailblazer-cells'
gem 'trailblazer-rails'
gem 'cells-rails'
gem 'uglifier', '>= 1.3.0'

group :development, :test do
  gem 'byebug', platform: :mri
  gem 'faker'
end

group :development do
  gem 'listen', '~> 3.0.5'
  gem 'web-console', '>= 3.3.0'
end
