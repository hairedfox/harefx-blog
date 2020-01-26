source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.6.5"

gem "rails", "~> 6.0.2", ">= 6.0.2.1"
gem "mysql2", ">= 0.4.4"
gem "puma", "~> 4.1"
gem "bootsnap", ">= 1.4.2", require: false
gem "graphql"
gem "graphiql-rails"
gem "config"

group :development, :test do
  gem "rspec-rails"
  gem "pry-rails"
  gem "factory_bot_rails"
  gem "faker", git: "https://github.com/faker-ruby/faker.git",
               branch: "master"
  gem "pry-byebug"
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem "listen", ">= 3.0.5", "< 3.2"
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
  gem "rubocop", "~> 0.79.0", require: false
end

group :test do
  gem "database_cleaner"
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
