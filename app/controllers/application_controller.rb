class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  # task :allow_methods, "GET, HEAD, POST, PUT, OPTIONS, DELETE"
  set :allow_origin, "http:/localhost:3000"
  set :bind, '0.0.0.0'
  configure do
    enable :cross_origin
  end
  before do
    response.headers['Access-Control-Allow-Origin'] = '*'
  end
  
  # routes...
  options "*" do
    response.headers["Allow"] = "GET, PUT, POST, DELETE, OPTIONS"
    response.headers["Access-Control-Allow-Headers"] = "Authorization, Content-Type, Accept, X-User-Email, X-Auth-Token"
    response.headers["Access-Control-Allow-Origin"] = "*"
    200
  end
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  #events routes
  get '/events' do
    get_events = Event.all
    get_events.to_json 
  end

  get '/events/:id' do 
    get_event_by_id = Event.find(params[:id])
    get_event_by_id.to_json
  end

  post '/events' do
    new_event = Event.create(
      address: params[:address], description: params[:description], image: params[:image],
      isFavorite: params[:isFavorite], title: params[:title]
    )
    new_event.to_json
  end

  patch '/events/:id' do
    patch_event = Event.find(params[:id])
    patch_event.update(
      address: params[:address], description: params[:description], image: params[:image],
      isFavorite: params[:isFavorite], title: params[:title]
    )
    patch_event.to_json
  end

  delete '/events/:id' do
    delete_event = Event.find(params[:id])
    delete_event.destroy
    delete_event.to_json
  end

  #users routes
  get '/users' do
    get_users = User.all
    get_users.to_json 
  end

  get '/users/:id' do 
    get_user_by_id = User.find(params[:id])
    get_user_by_id.to_json
  end

  post '/users' do
    new_user = User.create(
      name: params[:name], email: params[:email], 
      password: params[:password]
    )
    new_user.to_json
  end

  patch '/users/:id' do
    patch_user = User.find(params[:id])
    patch_user.update(
      name: params[:name], email: params[:email], 
      password: params[:password]
    )
    patch_user.to_json
  end

  delete '/users/:id' do
    delete_user = User.find(params[:id])
    delete_user.destroy
    delete_user.to_json
  end

  #reviews routes
  
  get '/reviews' do
    get_reviews = Review.all
    get_reviews.to_json 
  end

  get '/reviews/:id' do 
    get_reviews_by_id = Review.find(params[:id])
    get_reviews_by_id.to_json
  end

  post '/reviews' do
    new_review = Review.create(
      name: params[:name], 
      review: params[:review]
    )
    new_review.to_json
  end

  patch '/review/:id' do
    patch_review = Review.find(params[:id])
    patch_review.update(
      name: params[:name], 
      review: params[:review]
    )
    patch_review.to_json
  end

  delete '/review/:id' do
    delete_review = Review.find(params[:id])
    delete_review.destroy
    delete_review.to_json
  end

end
