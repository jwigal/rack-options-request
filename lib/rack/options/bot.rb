module Rack
  module Options
    class Bot
      def initialize(app)
        @app = app       
      end                

      def call(env)
        h = env["HTTP_ACCEPT"]
        env["HTTP_ACCEPT"] = "text/html" if h && (h =~ /(text\/\*|\*\/\*)/)
        @app.call(env)
      end
    end
  end
end