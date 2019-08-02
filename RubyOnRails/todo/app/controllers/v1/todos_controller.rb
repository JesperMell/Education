class V1::TodosController < ApplicationController
  def index 
    render json: {
      items: [
        {message: "Hello World"},
        {message: "Hello Bing"},
        {message: "Hello New York"},
      ]
    }
  end
end
