$:.push File.expand_path('../lib', __FILE__)

# Maintain Faalis gem's version:
require 'faalis/version'

# Describe Faalis gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'faalis'
  s.version     = Faalis::VERSION
  s.authors     = ['Sameer Rahmani', 'Behnam Ahmad Khan Beigi']
  s.email       = ['lxsameer@gnu.org', 'yottanami@gnu.org']
  s.homepage    = 'https://github.com/Yellowen/Faalis'
  s.summary     = 'Faalis is a ruby on rails engine which provides a platform to easily build a web application'
  s.description = 'Faalis is a ruby on rails engine which provides a platform to easily build a web application. Features like Dashboard, complex code generation and other awesome features. For more information checkout the docs.'
  s.required_ruby_version = '~> 2.0'

  s.licenses = ['GPL-2']
  s.files = Dir["{app,config,db,lib}/**/*", 'LICENSE', 'Rakefile',
                'README.md']

  s.test_files = Dir['spec/**/*']
  s.require_paths = ['lib']

  s.add_dependency 'rails', '~> 4.2', '>= 4.2.0'

  # Authentication
  s.add_dependency 'omniauth'
  s.add_dependency 'devise', '~> 3.4', '>= 3.4.0'

  # Authorization
  s.add_dependency 'pundit'
  #s.add_dependency 'mailboxer'

  # API
  s.add_dependency 'jbuilder'

  # Assets
  s.add_dependency 'jquery-rails'
  s.add_dependency 'sass-rails'
  s.add_dependency 'coffee-rails'
  s.add_dependency 'slim-rails'
  s.add_dependency 'sprockets'
  #s.add_dependency 'turbolinks', '~>3'
  s.add_dependency 'jquery-turbolinks'

  # TODO: It should be dependency of
  # dashboard or main template
  s.add_dependency 'modernizr-rails'

  # We have to give up lodash for sugar
  s.add_dependency 'lodash-rails', '~>2.4'
  s.add_dependency 'rails-assets-sugar', '1.4.1'

  s.add_development_dependency 'execjs'
  s.add_development_dependency 'fast_gettext'

  # Fake gems provided by rails-assets
  # to use these gems user should add
  # `source 'http://rails-assets.org' to the
  # gemfile
  s.add_dependency 'select2-rails'

  # i18n
  s.add_development_dependency 'gettext'
  s.add_development_dependency 'ruby_parser'
  s.add_development_dependency'gettext_i18n_rails'

  s.add_dependency 'less-rails'
  s.add_dependency 'railties'
  s.add_dependency 'jquery-rails'
  s.add_dependency 'font-awesome-rails'
  s.add_dependency 'slim-rails'
  s.add_dependency 'jquery-ui-rails'
  s.add_dependency 'rails-assets-jquery-knob'
  s.add_dependency 'rails-assets-bootstrap-daterangepicker'
  s.add_dependency 'rails-assets-jquery-sparkline'
  #c.add_dependency 'rails-assets-angular-ui-bootstrap'

  s.add_dependency 'select2-rails'

  s.add_dependency 'momentjs-rails', '>= 2.8.1'
  s.add_dependency 'bootstrap3-datetimepicker-rails', '~> 4.7'

  s.add_dependency 'colorize'

  # model_discovery
  s.add_dependency 'model_discovery', '~> 0.3.0'

  # To support multiple ORM at once
  s.add_dependency 'orm_adapter'

  s.add_development_dependency 'rdoc'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'capybara'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'factory_girl_rails'

  # We need to use next version of did you mean gem
  # for JRuby support. current version: 0.9.5
  #s.add_development_dependency 'did_you_mean'
  s.add_development_dependency 'annotate'
end
