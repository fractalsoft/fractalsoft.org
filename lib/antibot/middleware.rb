module Antibot
  class Middleware
    def initialize(app)
      @app = app
      @trap = Antibot::Trap.new
    end

    def call(env)
      @env = env
      if trap?
        @trap.run(env)
      else
        @app.call(env)
      end
    end

    private

    def trap?
      request = Rack::Request.new @env
      request.path == trap_path
    end

    def trap_path
      @trap_path ||= Config.trap_path
    end
  end
end
