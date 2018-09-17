class Application
  def call(env)
    resp = Rack::Response.new
    noon = 12
    if Time.now.hour > noon
      resp.write("Good Afternoon!")
    else
      resp.write("Good Morning!")
    end

    resp.finish
  end

end
