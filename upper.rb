class Upper
  def initialize(app)
    @app = app
  end

  def call(env)
    status, headers, body = @app.call(env)
    if headers['Content-Type'] == 'text/html'
      upcased_body = body.map{|text| text.upcase }
    else
      upcased_body = body.map{|text| text.capitalize}
    end
    [status, headers, upcased_body]
  end
end
