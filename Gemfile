source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.2.0"

# =============================
# 共通
# =============================
gem "rails", "~> 7.1.0"
gem "sprockets-rails"
gem "puma", "~> 6.0"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "bootsnap", require: false
gem "devise"
gem "pry-rails"
gem "mini_magick"
gem "image_processing", "~> 1.2"

# =============================
# ローカル開発・テスト用
# =============================
group :development, :test do
  gem "mysql2", "~> 0.5"         # ← 開発では MySQL を使う
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
end

group :development do
  gem "web-console"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"
end

# =============================
# 本番(Render)用
# =============================
group :production do
  gem "pg", "~> 1.5"             # ← RenderはPostgreSQLを使う
end
