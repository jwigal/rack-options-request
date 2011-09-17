module Rack
  module Options
    class Railtie < ::Rails::Railtie
      initializer "rackoptions.configure" do |app|
        app.config.middleware.insert_after( ::Rack::Lock, ::Rack::Options::Request)
        app.config.middleware.insert_after( ::Rack::Lock, ::Rack::Options::Bot)        
      end
    end
  end
end
