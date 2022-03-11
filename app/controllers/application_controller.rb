class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  set :public_folder, File.dirname(__FILE__) + '/static'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end
  get "/dogs" do
    dogs=Dog.all
    dogs.to_json  
  end
  get "/dogs/:id" do
    dogs=Dog.find(params[:id])
    dogs.to_json
  end
  delete "/dogs/:id" do
    dogs=Dog.find(params[:id])
    dogs.destroy
    dogs.to_json
  end
  post "/dogs" do
    # default_user_id = User.first&.id
    dogs=Dog.create(name:params[:name],
               age:params[:age],
               breed:params[:breed],
               size:params[:size],
               description:params[:description],
               walk_time:params[:true],
               image:params[:image],
              #  user_id: default_user_id
              )
    dogs.to_json
    
  end

end
