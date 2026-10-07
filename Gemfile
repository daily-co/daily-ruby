source 'https://rubygems.org'

gemspec

group :development, :test do
  gem 'rake', '~> 13.0.1'
  gem 'pry-byebug'
  # webmock pulls in public_suffix. 7.x needs Ruby 3.2, and this gem still
  # supports 3.1, so keep 6.x until 3.1 is dropped.
  gem 'public_suffix', '< 7'
  gem 'webmock', '~> 3.23'
end
