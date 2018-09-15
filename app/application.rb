class Application
  def call(env)
    resp = Rack::Response.new

    t = Time.now
    if t.hour < 12
      resp.write "Good Morning #{t}"
    else
      resp.write "Good Afternoon #{t}"
    end

    resp.finish
  end
end
