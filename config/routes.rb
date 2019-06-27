Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
  #   get "/photos" => "photos#index"

  get '/query_url' => 'params#query'
  get '/guess_game' => 'params#guess'

  get '/segment_paramter_url/:this' => "params#url_segment_method"

  end
end
