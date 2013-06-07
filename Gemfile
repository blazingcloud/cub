source 'https://rubygems.org'
ruby '1.9.3'

gem 'rails', '3.2.13'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'pg'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
gem 'thin'

# Deploy with Capistrano
# gem 'capistrano'

# gem 'debugger' cause RubyMine debugger to skip breakpoints
# See http://stackoverflow.com/questions/11672201/unable-to-debug-in-rubymine-4-5-using-ruby-1-9-3
# gem 'debugger'

# Cub!
gem 'pivotal_git_scripts'
gem 'omniauth-singly'
gem 'httparty'
gem 'rack-rewrite'

group :test do
  #gem 'minitest-rails'
  gem 'minitest-spec-rails'
  gem 'cucumber-rails'
  gem 'poltergeist'
  gem 'database_cleaner'
end

group :development, :test do
  gem 'ruby-debug-base19x'
  gem 'ruby-debug-ide'
  gem 'fakeweb'
  gem 'factory_girl_rails'
  gem 'launchy'
end