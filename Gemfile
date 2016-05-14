# encoding: utf-8
# frozen_string_literal: true

source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.5.2'
# Use sqlite3 as the database for Active Record
gem 'sqlite3', '~> 1.3.11'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Generates attr_accessors that transparently encrypt and decrypt attributes.
gem "attr_encrypted", "~> 2.0.0"

# Figaro was written to make it easy to securely configure Rails applications
gem "figaro"

# Factory Girl
gem 'factory_girl_rails', "~> 4.0"

# Prawn PDF generator
gem "prawn"

# HTML Abstraction Markup Language - Makes HTML more pretty and clean!
gem "haml-rails"

# Sass Powered version of Bootstrap 
gem 'bootstrap-sass', '~> 3.3', '>= 3.3.6'

# Upload files attachments for ActiveRecord
gem "paperclip", "~> 5.0.0.beta1"

gem "aws-sdk-v1"

gem 'dotenv-rails', :groups => [:development, :test]

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  gem 'rubocop'
  gem 'rspec-rails'
  gem 'rubocop-rspec'
  gem 'capybara'
  gem 'sqlite3', '~> 1.3.11'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'
  gem 'sqlite3', '~> 1.3.11'

  # Spring speeds up development by keeping your application running in the
  # background. Read more: https://github.com/rails/spring
  gem 'spring'
end
