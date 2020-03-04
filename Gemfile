 source 'https://rubygems.org'

ruby '2.2.5'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.5'
# Use mysql as the database for Active Record
# Ugh, Rails 4.2.4 is broken w/r/t/ mysql2 gem > 0.3.x
gem 'mysql2', '~> 0.3.18'

gem 'bootstrap-sass', '~> 3.3.5'

gem 'font-awesome-rails'

gem 'sass-rails', '>= 3.2'
gem 'autoprefixer-rails', '~> 6.3.1'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
gem 'therubyracer', '~> 0.12.2', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails', '~> 4.1.0'
gem 'jquery-ui-rails', '~> 5.0.5'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks', '~> 2.5.3'
gem 'jquery-turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

gem 'rails-jquery-autocomplete', '~> 1.0.3'

gem 'jquery-cropper', '~> 2.3.2'

# authentication
gem 'devise', '~> 4.1.1'
# authorization
gem 'cancancan', '~> 1.10'

# pagination
gem 'kaminari', '~> 0.16.3'

# attach images
gem 'paperclip', '~> 4.3'
# do some jobs in the background
gem 'delayed_job_active_record', '~> 4.1.0'
# process paperclip in the background
gem 'delayed_paperclip', '~> 2.9.1'

gem 'daemons', '1.1.9'

# send emails when things go wrong
gem 'exception_notification', '~> 4.1.1'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Puma as the app server
gem 'puma', '~> 3.12.4'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

gem 'rb-fsevent', '~> 0.9.7', group: :darwin

gem 'flickraw-cached'

gem 'lograge'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', '~> 8.2.2'
  gem 'pry-rails', '~> 0.3.4'

  gem 'minitest', '5.8.1'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring', '~> 1.6.2'

  gem 'spring-commands-rspec', '~> 1.0.4'
  gem 'rspec-rails', '~> 3.4'
  gem 'guard-rspec', '~> 4.6.4'
  gem 'dotenv-rails', '~> 2.1.0'
  gem 'factory_girl_rails', '~> 4.6.0', require: false
  gem 'database_cleaner', '~> 1.5.1'
  gem 'poltergeist', '~> 1.9'
  gem 'launchy', '~> 2.4.3' # save_and_open_page functionality
  gem 'capybara', '~> 2.7'
  gem 'capybara-screenshot', '~> 1.0.13'
  gem 'simplecov', '~> 0.11.2', :require => false
end

# Access an IRB console on exception pages or by using <%= console %> in views
gem 'web-console', '~> 2.0', group: :development
