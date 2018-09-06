source "https://rubygems.org"
git_source(:github){|repo| "https://github.com/#{repo}.git"}

ruby "2.5.1"
gem "bcrypt", "3.1.12"
gem "bootsnap", ">= 1.1.0", require: false
gem "bootstrap-sass", "3.3.7"
gem "carrierwave", "1.2.2"
gem "config"
gem "devise"
gem "font-awesome-rails"
gem "jbuilder", "~> 2.5"
gem "jquery-rails", "~> 4.3"
gem "puma", "~> 3.11"
gem "ransack", github: "activerecord-hackery/ransack"
gem "rails", "~> 5.2.0"
gem "roo"
gem "rubocop", "~> 0.54.0", require: false
gem "sass-rails", "~> 5.0"
gem "select2-rails"
gem "simple_form"
gem "summernote-rails"
gem "turbolinks", "~> 5"
gem "uglifier", ">= 1.3.0"
gem "dotenv-rails"
gem "shoulda-matchers"

group :development, :test do
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
  gem "mysql2"
  gem "pry"
  gem "pry-rails"
  gem "rspec-rails"
  gem "factory_bot_rails"
end

group :test do
  gem "faker", git: "https://github.com/stympy/faker.git", branch: "master"
  gem "capybara"
  gem "guard-rspec"
  gem "launchy"
end

group :development do
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
  gem "web-console", ">= 3.3.0"
end

group :production do
  gem "pg", "0.20.0"
end
