class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  #events
  get '/events' do
    get_events = Event.all.order(:asc)
    get_events.to_json 
  end

  get '/events/:id' do 
    get_event_by_id = Event.find(params[:id])
    get_event_by_id.to_json
  end

  post 'events' do
    new_event = Entry.create(
      title: params[:title], image_url: params[:image_url], event_description: params[:event_description],
      user_id: params[:user_id]
    )
    new_event.to_json
  end

  patch '/events/:id' do
    patch_event = Event.find(params[:id])
    patch_event.update(
      title: params[:title], image_url: params[:image_url], event_description: params[:event_description],
      user_id: params[:user_id]
    )
    patch_event.to_json
  end

  delete '/events/:id' do
    delete_event = Event.find(params[:id])
    delete_event.destroy
    delete_event.to_json
  end
end
