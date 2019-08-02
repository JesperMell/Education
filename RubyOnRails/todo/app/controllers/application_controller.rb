class ApplicationController < ActionController::API
  def index
   render json: "Hello World" 
  end
end
