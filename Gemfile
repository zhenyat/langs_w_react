################################################################################
# Generic Gemfile
# Updated according to:
#   - Michael Hartl 3-rd Edition (Listing 11.67)
#   - BKC standards (?)
#   - Heroku
#
#   NB! dont remove *coffee-rails* - *turbolinks* depends on it
#   28.06.2015  ZT
#   04.07.2015  pg_search
#   11.07.2015  acts-as-taggable-on
#   18.07.2015  no gems version selected
#               simple_form with bootstrap
#   17.09.2015	Ruby & RoR last versions
#   22.09.2015  gem *guard* added
#   24.11.2015  rails 4.2.5
#   14.01.2016  ruby 2.3.0
#   19.01.2016  Rails 5.0.0 Beta
#   20.01.2016  Turbolinks is OFF (waiting for TL 5)
#   03.02.2016  Rails 5.0.0.beta2
#   28.06.2016  Rails 5.0.0.rc2
#   07.07.2016  Ruby 2.3.1 & Rails 5.0.0
#               The file revision following the 5.0.0. version
#   10.10.2016  RoR 5.0.0.1
#   09.01.2017  Rails 5.0.1 / Ruby 2.4.0
#               (with json not OK for Ruby 2.4.0: line 'gem *sdoc*' is commented out for a while)
#   18.01.2017  Gems versions updated
#   07.02.2017  gem 'seed_dump' added
#   13.02.2017  gem 'react-rails' added
#   27.04.2017  Rails 5.0.2
#   22.05.2017  Ruby 2.4.1 / RoR 5.0.3
#   28.06.2017  gem 'lightbox2-rails'
#   12.07.2017  git_source
#   27.07.2017  RoR 5.1.2; gem 'tzinfo-data' disabled 
#   28.07.2017  bootstrap 4 as alternative
#   30.07.2017  gem 'rest-client' (to handle API)
#   16.08.2017  Rails 5.1.3
#   09.09.2017  Rails 5.1.4;  Bootstrap 4.0.0.beta
#   18.09.2017  Ruby 2.4.2
#   20.09.2017  Chartkick - Google Candlesticks chart is NOT SUPPORTED!
#   28.09.2017  gon
#   23.10.2017  Fusuion Charts
#   26.10.2017  disable gem 'rails_12factor' - not needed anymore
#               # See:  https://devcenter.heroku.com/articles/getting-started-with-rails5#local-workstation-setu
#   09.01.2018  Ruby 2.5.0, bootstrap 4.0.0.beta3
#   27.03.2018  Rails 5.2.0.rc2, bootstrap 4.0, 'webpacker', bootsnap, crono
#               and some gems added / versions updated
#               jquery-rails excluded - NOT NOW! required by bootstrap (DDL)
#   26.03.2019  Ruby 2.6.2 / Rails 6.0.0.beta3
#               Gems versions updated
#               Not used: coffee-rails, jquery-rails
#   01.04.2019  Switch: react_on_rails' |  'react-rails'
#   07.04.2019  Gem Foreman added
#   23.07.2019  Ruby 2.6.3 / Rails 6.0.0.rc2
#   18.09.2019  Ruby 2.6.4 / Rails 6.0.0
#               Gems versions are revised
#   03.11.2019  Ruby 2.6.5 / Rails 6.0.1.rc1
################################################################################
source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.1'
gem 'rails', '~> 6.1.3.2'                     # Bundle edge Rails instead: gem 'rails', github: 'rails/rails'

gem 'pg', '>= 0.18', '< 2.0'
gem 'pg_search'
gem 'seed_dump'

gem 'puma', '~> 4.1'                            # Use Puma as the app server

gem 'sass-rails', '>= 6'

gem 'webpacker', '~> 4.0'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.7'

# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false

gem 'react-rails'
#gem 'simple_form'                               # https://github.com/plataformatec/simple_form
gem 'enum_help'
gem 'ransack'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'foreman'
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # Easy installation and use of web drivers to run system tests with browsers
  gem 'webdrivers'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
#gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
