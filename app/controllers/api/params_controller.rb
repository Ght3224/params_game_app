class Api::ParamsController < ApplicationController

  def query 

    @name = params["name"]
    render "query_paramter.json.jb"
  end 
end
