module PhoenixPortal
  module Generators
    class InstallGenerator < Rails::Generators::Base

      def add_javascripts
        append_file "app/assets/javascripts/store/all.js", "//= require store/phoenix_portal\n"
        append_file "app/assets/javascripts/admin/all.js", "//= require admin/phoenix_portal\n"
      end

      def add_stylesheets
        inject_into_file "app/assets/stylesheets/store/all.css", " *= require store/phoenix_portal\n", :before => /\*\//, :verbose => true
        inject_into_file "app/assets/stylesheets/admin/all.css", " *= require admin/phoenix_portal\n", :before => /\*\//, :verbose => true
      end
    end
  end
end
