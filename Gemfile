source "https://rubygems.org"

ruby "2.3.3"
# Bundle edge Rails instead: gem "rails", github: "rails/rails"
gem "rails", "4.2.7.1"
# Use postgresql as the database for Active Record
gem "pg", "~> 0.15"
# Use SCSS for stylesheets
gem "sass-rails", "~> 5.0"
# Use Uglifier as compressor for JavaScript assets
gem "uglifier", ">= 1.3.0"
# Use CoffeeScript for .coffee assets and views
gem "coffee-rails", "~> 4.1.0"
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem "therubyracer", platforms: :ruby

# Use jquery as the JavaScript library
gem "jquery-rails"
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem "jbuilder", "~> 2.0"
# bundle exec rake doc:rails generates the API under doc/api.
gem "sdoc", "~> 0.4.0", group: :doc

gem "devise"
gem "devise_invitable", "~> 1.7.0"
gem "pundit"
gem "letter_opener"

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem "pry-byebug"
  gem "pry-rails"
  gem "rubocop", "~> 0.42.0", require: false
  gem "scss_lint", require: false
  gem "rspec-rails"
  gem "factory_girl_rails"
  # Use .env file to load a custom environment for this app in development and
  # test
  gem "dotenv-rails"
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem "web-console", "~> 2.0"
end

group :test do
  gem "faker"
  gem "capybara"
end
