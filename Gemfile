source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.3'

gem 'devise'
gem 'doorkeeper'
gem 'doorkeeper-jwt', '~> 0.3.0'
gem 'jsonapi-resources'
gem 'pg', '~> 1.1'
gem 'puma', '~> 5.0'
gem 'rails', '~> 7.0.2', '>= 7.0.2.3'
# gem "redis", "~> 4.0"
# gem "kredis"
gem 'bootsnap', require: false
gem 'rack-cors'

group :development, :test do
  gem 'pry'
  gem 'pry-nav'
end

group :development do
  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"
end
