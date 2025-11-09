source "https://rubygems.org"

ruby "3.2.0"

gem "rails", "~> 7.1.0"
gem "sprockets-rails"
gem "puma", ">= 5.0"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"
gem "tzinfo-data", platforms: %i[windows jruby]
gem "bootsnap", require: false
gem "devise", "~> 4.9"

# ここがポイント：全環境PostgreSQLに統一
gem "pg"

group :development do
  gem "web-console"
  gem "debug", platforms: %i[mri windows]
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
end
