class Http
  def initialize(app)
    @app = app
  end

  def call(env)
    req = Rack::Request.new(env)
    res = Rack::Response.new
    status, headers, body = @app.call(env)
    if req.get?
      body[0] += " Congratulations you GET!" 
      res.write body
    else
      res.write body
    end
      res.finish
  end
end
