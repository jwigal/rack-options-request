module Rack
  module Options
    class Railtie < ::Rails::Railtie
      initializer "rackoptions.configure" do |app|
        app.config.middleware.use ::Rack::Options::Request
        app.config.middleware.use ::Rack::Options::Bot      
      end
    end
  end
end
