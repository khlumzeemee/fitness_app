source 'https://rubygems.org'

gem 'rails', '3.2.11'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

# for Heroku deployment - as described in Ap. A of ELLS book
group :test do
  gem 'cucumber-rails'
  gem 'cucumber-rails-training-wheels'
  gem 'rspec-rails'
  gem 'simplecov'
end
group :development, :test do
  gem 'sqlite3'
  #gem 'debugger'
  gem 'database_cleaner'
  gem 'capybara'
  gem 'launchy'
  gem 'autotest-rails'
 
end
group :production do
  gem 'pg'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  
  #gem 'libv8'
  #gem 'therubyracer'    
  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer'

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

gem 'haml'
gem 'haml-rails'
