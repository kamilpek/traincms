source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.1'
# Use postgresql as the database for Active Record
gem 'pg', '~> 0.18'
# Use Puma as the app server
gem 'puma', '~> 3.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'rails-erd', '~> 1.5' # generowanie diagramu erd
  gem 'railroady', '~> 1.5', '>= 1.5.2' # generowanie diagramu modelu danych
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# dodane gemy
gem 'devise' # uzytkownicy
gem 'foundation-rails', '~> 6.3' # wyglad strony
gem 'foundation-icons-sass-rails', '~> 3.0' # wyglad strony - ikonki
gem 'jquery-turbolinks', '~> 2.1' # wyglad strony
gem 'simple_form', '~> 3.4' # formularze
gem 'will_paginate', '~> 3.1', '>= 3.1.5' # paginacja
gem 'will_paginate-foundation', '~> 6.2' # paginacja - wyglad
gem 'carrierwave', '~> 1.0' # upload plików
gem 'rmagick', '~> 2.16', :require => 'rmagick' # upload plików - obrazki
gem 'mini_magick', '~> 4.6', '>= 4.6.1' # upload plików - obrazki
gem 'recaptcha', '~> 4.1', :require => 'recaptcha/rails' # captcha
gem 'ckeditor', '~> 4.2', '>= 4.2.2' # edytor tekstu
gem 'chartkick', '~> 2.2', '>= 2.2.2' # wykresy
gem 'groupdate', '~> 3.2' # dodatek do wykresów
gem 'prawn', '~> 2.1' # pdfy
gem 'prawn-table', '~> 0.2.2' # pdfy - dodatek
gem 'cloudinary', '~> 1.6' # upload - serwis zewnętrzny
gem 'rqrcode', '~> 0.10.1' # kody qr - html
gem 'prawn-qrcode', '~> 0.3.0' # kody qr - pdf
gem 'geocoder', '~> 1.4', '>= 1.4.3' # geolokalizacja
gem 'cookies_eu', '~> 1.6', '>= 1.6.2' # informacja o ciasteczkach
