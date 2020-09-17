class PlantsController < ApplicationController

    get '/plants' do
        @plants = Plant.all
        erb :"/plants/index"
    end

    get '/plants/new' do
        erb :"/plants/new"
    end

    get '/plants/:id' do
        @plants = Plant.find_by_id(params[:id])
        erb :"/plants/show"
    end

    post '/plants' do
        plant = Plant.create(params[:plant])
        redirect "/plants/#{plant.id}"
    end

    get "/plants/:id/edit" do
        @plant = Plant.find_by(id:params[:id])
        erb :"/plants/edit"
    end


    

    # get '/plants/new' do 
    #     if !logged_in? #checking if they are logged in
    #         redirect "/login" #redirecting if not logged in
    #     else
    #         "A new plant form" #rendering form if they are logged in
    #     end
    #     erb :"/plants/new"
    # end

    get '/plants/:id/edit' do
        if !logged_in? #checking if they are logged in from our app.rb method 'logged_in?'
            redirect "/login" #redirecting if not logged in
        else
            "An edit plant form" #rendering form if they are logged in
        end
    end


end
