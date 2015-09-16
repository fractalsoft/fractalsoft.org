# Antibot Middleware
class AntibotMiddleware
  def initialize(app, path)
    @app = app
    @trap = Antibot::Trap.instance
    @trap.path = path
  end

  def call(env)
    @env = env
    dup._call
  end

  def _call
    if trap?
      @trap.run(@env)
    else
      @app.call(@env)
    end
  end

  private

  def trap?
    request = Rack::Request.new @env
    request.path == @trap.path
  end
end
