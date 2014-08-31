source 'http://rubygems.org'
ruby "2.1.2"

gem 'rails', '~>3.2'
gem 'activeadmin', github: 'gregbell/active_admin'
gem "pg",                     '0.17.1'
gem 'rack-canonical-host',    '0.1.0'

group :development, :test do
  gem 'rspec',                '~> 3.0.0.beta'
  gem 'rspec-rails',          '~> 3.0.0.beta'
  gem 'factory_girl_rails',   '4.4.1'
  gem 'pry-rails',            '0.3.2'
  gem 'dotenv-rails',         '0.10.0'
  gem 'awesome_print',        '1.2.0'
end

gem 'json'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2'
  gem 'coffee-rails', '~> 3.2'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'therubyracer'

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

group :production do
  gem 'rails_12factor'
end
