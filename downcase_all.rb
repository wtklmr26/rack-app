class DowncaseAll
  def initialize(app)
    @app = app
  end

  def call(env)
    status_code, headers, body = @app.call(env)
    body.each{ |part| part.downcase! }

    [status_code, headers, body]
  end
end
