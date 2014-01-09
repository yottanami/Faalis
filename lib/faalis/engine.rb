# -----------------------------------------------------------------------------
#    Red Base - Basic website skel engine
#    Copyright (C) 2012-2013 Yellowen
#
#    This program is free software; you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation; either version 2 of the License, or
#    (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License along
#    with this program; if not, write to the Free Software Foundation, Inc.,
#    51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
# -----------------------------------------------------------------------------
require 'fast_gettext'
require 'modernizr-rails'
require "compass-rails"
require 'zurb-foundation'
require "font-awesome-rails"
require "devise"
require "warden"
require "cancan"


module Faalis
  class Engine < ::Rails::Engine

    isolate_namespace Faalis
    engine_name "faalis"

    ActiveSupport::Inflector.inflections(:en) do |inflect|
      inflect.acronym 'API'
    end

    config.generators do |g|
      g.test_framework      :rspec,        :fixture => false
      g.fixture_replacement :factory_girl, :dir => 'spec/factories'
      g.assets false
      g.helper false
    end

    # Configure logger
    mattr_accessor :logger
    @@logger = Logger.new(STDOUT)

    # Permissions configuration
    mattr_accessor :models_with_permission

    # TODO: create a basic setup for this option
    @@models_with_permission = ["Faalis::User",
                                "Faalis::Group",
                               ]

    def self.models_with_permission=(value)
      @@models_with_permission.concat(value).uniq!
    end

    # Dashboard url prefix
    mattr_accessor :dashboard_namespace
    @@dashboard_namespace = :dashboard


    # locales
    mattr_accessor :locales
    @@locales = ['en', 'fa']

    def self.setup
      yield self
    end

    I18n.locale = :fa
    # Fast Gettext Configuration
    Object.send(:include, FastGettext::Translation)

    # TODO: Check for possible error in this configurations
    @@locale_path = "#{root}/config/locales"
    FastGettext.add_text_domain 'faalis', :path => @@locale_path, :type => :po
    # All languages you want to allow
    FastGettext.default_available_locales = @@locales

    FastGettext.default_text_domain = 'faalis'
    FastGettext.locale = :fa

    # Site Title
    mattr_accessor :site_title
    @@site_title = _("Red Base")

    # Override devise layout
    config.to_prepare do
      Devise::SessionsController.layout "faalis/application"
      Devise::RegistrationsController.layout  "faalis/application"
      Devise::ConfirmationsController.layout "faalis/application"
      Devise::UnlocksController.layout "faalis/application"
      Devise::PasswordsController.layout "faalis/application"
    end
    #Devise.omniauth_path_prefix = ["/en", "/fa"]


    # Dashboard configurations
    mattr_accessor :dashboard_modules

    # This class variable should be a hash
    # that each key is a resource name and its value
    # is some of these:
    #       resource: provide resource name explicitly
    #       title: resource title (will show in dashboard)
    #       icon: icon class checkout font-awesome
    @@dashboard_modules = {
      :auth => {
        :title => _("Authentication"),
      }
    }


    def self.dashboard_modules=(value)
        @@dashboard_modules.merge!(value)
    end

    # Dashboard default javascript manifest
    mattr_accessor :dashboard_js_manifest
    @@dashboard_js_manifest = "controlpanel/application.js"

  end
end