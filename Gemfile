source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.5.0"

gem "rails", "5.2.0"
gem "sqlite3"
gem "puma", "3.11.4"
gem "sass-rails", "5.0.7"
gem "sprockets", "3.7.2"
gem "uglifier", "4.1.11"
gem "coffee-rails", "4.2.2"
gem "jbuilder", "2.7.0"
gem "bootsnap", "1.3.0", require: false
gem "sorcery", "0.12.0"
gem "faker", :git => "https://github.com/stympy/faker.git", :branch => "master"
gem "will_paginate", "3.1.6"
gem "pusher", "1.3.1"
gem "figaro", "1.1.1"

group :development, :test do
  gem "rspec-rails", "3.7.2"
  gem "byebug", "10.0.2", platforms: [:mri, :mingw, :x64_mingw]
  gem "annotate", git: "https://github.com/ctran/annotate_models.git"
end

group :development do
  gem "web-console", "3.6.2"
  gem "listen", "3.1.5"
  gem "spring", "2.0.2"
  gem "spring-watcher-listen", "2.0.1"
  gem "letter_opener", "1.6.0"
  gem "capistrano", "3.10.2"
  gem "capistrano-bundler", "1.3.0"
  gem "capistrano-rails", "1.3.1"
  gem "capistrano-rbenv", "2.1.3"
  gem "capistrano-rbenv-install", "1.2.0"
end

group :test do
  gem "capybara", "3.2.1"
  gem "poltergeist", "1.18.0"
  gem "simplecov", "0.16.1"
  gem "shoulda-matchers", "3.1.2"
  gem "factory_bot", "4.8.2"
  gem "database_cleaner", "1.7.0"
  gem "pusher-fake", "1.9.0"
end

group :production do
  gem "mysql2", "0.4.10"
end
