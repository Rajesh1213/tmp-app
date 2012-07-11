require 'rbconfig'
HOST_OS = RbConfig::CONFIG['host_os']
source 'https://rubygems.org'
gem 'rails', '3.2.3'

gem "bson_ext", ">= 1.6.2"
gem "mongoid", ">= 2.4.10"
gem "omniauth", ">= 1.1.0"
gem "omniauth-facebook"
gem 'fbgraph'
gem "bootstrap-sass", ">= 2.0.3"
gem "simple_form"
gem "will_paginate_mongoid"
gem "will_paginate"
gem "therubyracer", :group => :assets, :platform => :ruby
gem 'jquery-rails'
gem "haml", ">= 3.1.6"
gem "capistrano"
gem "rmagick"
gem "carrierwave"
gem 'carrierwave-mongoid', :require => 'carrierwave/mongoid'

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end

group :development do 
  gem "haml-rails", ">= 0.3.4"
  gem "rspec-rails", ">= 2.10.1"
  gem "factory_girl_rails", ">= 3.3.0"
  gem "guard", ">= 0.6.2"
  gem "guard-bundler", ">= 0.1.3"
  gem "guard-rails", ">= 0.0.3"
  gem "guard-rspec", ">= 0.4.3"
  gem "guard-cucumber", ">= 0.6.1"
end

group :test do 
  gem "rspec-rails", ">= 2.10.1"
  gem "database_cleaner", ">= 0.7.2"
  gem "mongoid-rspec", ">= 1.4.4"
  gem "machinist"
  gem "factory_girl_rails", ">= 3.3.0"
  gem "email_spec", ">= 1.2.1"
  gem "cucumber-rails", ">= 1.3.0"
  gem "capybara", ">= 1.1.2"
  gem "launchy", ">= 2.1.0"
end

group :production do 

end

gem 'rb-fsevent', :group => :development
gem 'growl', :group => :development

