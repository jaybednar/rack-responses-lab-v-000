class Application
 @@items = ["Apples","Carrots","Pears"]
  def call(env)
    resp = Rack::Response.new

    @@items.each do |item|
       resp.write "#{item}\n"
     end
    # if Time.now.hour < 12
    #   resp.write "Good Morning!"
    # else
    #   resp.write "Good Afternoon!"
    # end

    resp.finish
  end

end
