require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  get "/hello/:name" do
    @user_name = params[:name] # get "/hello/:name" is an example of a dynamic route.
    "Hello #{@user_name}!"
  end

  # Code your final two routes here:

  get "/goodbye/:name" do
    @user_name = params[:name]
    "Goodbye, #{@user_name}."
  end

  get "/multiply/:num1/:num2" do
    @num1 = params[:num1].to_i # params return value will always be a string.
    @num2 = params[:num2].to_i # you have to convert it into an integer with to_i.
    result = "#{@num1 * @num2}" # then interpolate the two, reconverting it back into a string.
    result
  end

end