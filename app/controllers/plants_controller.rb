class PlantsController < ApplicationController

    get '/plants' do
        @plants = current_user.plants
        erb :"/plants/index"
    end

    get '/plants/new' do
        erb :"/plants/new"
    end

    get '/plants/:id' do
        if session[:user_id]
            @plant = Plant.find(params[:id])
            erb :"/plants/show"
        else
            redirect "/"
        end
    end

    post '/plants' do
        # params[:plants][:user_id] = current_user
        plant = current_user.plants.create(params[:plant])
        # plant = Plant.create(params[:plant])
        redirect "/plants/#{plant.id}"
    end

    get "/plants/:id/edit" do
        find_plant 
        # @plant = Plant.find_by_id(params[:id])
        erb :"/plants/edit"
    end

    patch "/plants/:id" do
        find_plant
        if current_user.id = @plant.user_id
            @plant.update (params[:plant])
            redirect "/plants/#{@plant.id}"
        else
            redirect "/plants"
        end
    end

    delete "/plants/:id" do
        find_plant
        @plant.destroy
        redirect "/plants"
    end

    private

    def find_plant
        @plant = Plant.find_by(id:params[:id])
    end

end



    

    # get '/plants/new' do 
    #     if !logged_in? #checking if they are logged in
    #         redirect "/login" #redirecting if not logged in
    #     else
    #         "A new plant form" #rendering form if they are logged in
    #     end
    #     erb :"/plants/new"
    # end

    # get '/plants/:id/edit' do
    #     if !logged_in? #checking if they are logged in from our app.rb method 'logged_in?'
    #         redirect "/login" #redirecting if not logged in
    #     else
    #         "An edit plant form" #rendering form if they are logged in
    #     end
    # end
