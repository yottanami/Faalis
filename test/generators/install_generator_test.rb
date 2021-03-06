# require 'test_helper'
# require 'generators/faalis/install_generator'

# class InstallGeneratorTest < Rails::Generators::TestCase
#   tests ::Faalis::Generators::InstallGenerator
#   destination File.expand_path('../../dummy/tmp/install', __FILE__)
#   setup :prepare_destination

#   def run_generator(args=self.default_arguments, config={})
#       args += ['--skip-bundle'] unless args.include? '--dev'
#       self.generator_class.start(args, config.reverse_merge(destination_root: destination_root))
#   end

#   before do
#       path  = File.expand_path('../../dummy/tmp/install', __FILE__)
#       dummy = File.expand_path('../../dummy/', __FILE__)

#       mkdir_p path
#       mkdir_p("#{path}/config/initializers")
#       mkdir_p("#{path}/app/controllers")
#       mkdir_p("#{path}/db")
#       mkdir_p("#{path}/bin")
#       touch("#{path}/config/routes.rb")
#       touch("#{path}/Gemfile")
#       touch("#{path}/config/initializers/assets.rb")
#       touch("#{path}/config/initializers/formtastic.rb")
#       touch("#{path}/db/seeds.rb")
#       cp("#{dummy}/bin/rails", "#{path}/bin/rails")
#       cp("#{dummy}/config/boot.rb", "#{path}/config/boot.rb")
#       cp("#{dummy}/config/application.rb", "#{path}/config/application.rb")
#       touch("#{path}/app/controllers/application_controller.rb")

# #    run_generator
#   end

#   after do
#     capture(:stdout) do
#       path  = File.expand_path('../../dummy/tmp/install', __FILE__)
#       rm_rf path
#     end
#   end

#   def test_copies_the_files
#     run_generator

#     assert_file 'config/initializers/faalis.rb'
#     assert_file 'config/initializers/devise.rb'
#     assert_file 'db/seeds.rb'
#     assert_file 'app/controllers/api_controller.rb'
#     assert_file 'app/controllers/dashboard/application_controller.rb'
#     assert_file 'app/policies/application_policy.rb'
#     assert_file 'app/assets/javascripts/dashboard/application.js'
#     assert_file 'app/assets/stylesheets/dashboard/ltr/application.css'
#     assert_file 'app/assets/stylesheets/dashboard/rtl/application.css'
#   end
# end




#   # def content_of(path)
#   #   full_path = "#{destination_root}/#{path}"
#   #   File.read(full_path)
#   # end

#   # before :all do
#   #   prepare_destination

#   #   path = File.expand_path('../../dummy/tmp/', __FILE__)

#   #   FileUtils.mkdir_p("#{path}/config/initializers")
#   #   FileUtils.mkdir_p("#{path}/app/controllers")
#   #   FileUtils.mkdir_p("#{path}/db")

#   #   FileUtils.touch("#{path}/config/routes.rb")
#   #   FileUtils.touch("#{path}/Gemfile")
#   #   FileUtils.touch("#{path}/config/initializers/assets.rb")
#   #   FileUtils.touch("#{path}/config/initializers/formtastic.rb")
#   #   FileUtils.touch("#{path}/db/seeds.rb")


#   #   FileUtils.touch("#{path}/app/controllers/application_controller.rb")
#   #   run_generator
#   # end
