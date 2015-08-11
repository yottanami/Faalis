require 'fast_gettext'
require 'gettext_i18n_rails'
# TODO: Check for possible error in this configurations
FastGettext.add_text_domain 'app', :path => 'config/locales', :type => :po
# All languages you want to allow
#FastGettext.default_available_locales = ['en', 'fa']
FastGettext.default_text_domain = 'app'
