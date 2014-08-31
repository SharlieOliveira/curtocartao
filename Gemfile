source 'http://rubygems.org'
ruby "2.1.2"

gem 'rails',                  '3.2.19'
gem "pg",                     '0.17.1'
gem 'json',                   '1.8.1'
gem 'jquery-rails',           '3.1.1'
gem 'rack-canonical-host',    '0.1.0'

gem 'activeadmin',            github: 'gregbell/active_admin'

group :development, :test do
  gem 'rspec',                '~> 3.0.0'
  gem 'rspec-rails',          '~> 3.0.0'
  gem 'factory_girl_rails',   '4.4.1'
  gem 'pry-rails',            '0.3.2'
  gem 'dotenv-rails',         '0.10.0'
  gem 'awesome_print',        '1.2.0'
end

group :assets do
  gem 'sass-rails',           '~> 3.2'
  gem 'coffee-rails',         '~> 3.2'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'therubyracer'
  gem 'uglifier',             '>= 1.0.3'
end

group :production do
  gem 'rails_12factor'
end
