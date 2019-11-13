source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.3'

gem "bootsnap", ">= 1.1.0", require: false
gem "bootstrap", "~> 4.3.1"
gem "config"
gem "devise"
gem "draper"
gem "jbuilder", "~> 2.5"
gem "jquery-rails"
gem "mysql2", "~> 0.5.2"
gem "pagy"
gem "puma", "~> 3.11"
gem "rails", "~> 5.2.3"
gem "redis-namespace"
gem "sass-rails", "~> 5.0"
gem "sidekiq"
gem "slim-rails"
gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem "uglifier", ">= 1.3.0"

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem "bundler-audit"
  gem "database_cleaner"
  gem "rubocop", "~> 0.66.0", require: false
  gem "rubocop-checkstyle_formatter", require: false
  gem "shoulda-matchers"
  gem "simplecov", require: false
  gem "simplecov-json", require: false
  gem "simplecov-rcov", require: false
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
