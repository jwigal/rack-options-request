module Rack
  module Options
    class Bot
      def initialize(app)
        @app = app       
      end                

      def call(env)
        env["HTTP_ACCEPT"] ="text/html" if env["HTTP_ACCEPT"] == "text/*"
        @app.call(env)   
      end
    end
  end
end