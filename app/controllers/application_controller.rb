class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def hello
    render html: "Hello 3 Gnomes!  Hi Yui, You are lovely and beautiful!  I love you!"
  end

end
