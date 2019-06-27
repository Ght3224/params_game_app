Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
  #   get "/photos" => "photos#index"

  get '/query_url' => 'params#query'
  get '/guess_game' => 'params#guess'

  get '/segment_paramter_url/:guess' => "params#guess"



  post '/body_parameter_url' => 'params#body_param_action'


#game
  post '/guess' => 'params#action'

  end
end
