class PlantsController < ApplicationController

    get '/plants' do
        "A list of recently added plants!"
    end

    get '/plants/new' do 
        if !logged_in? #checking if they are logged in
            redirect "/login" #redirecting if not logged in
        else
            "A new plant form" #rendering form if they are logged in
        end
    end

    get '/plants/:id/edit' do
        if !logged_in? #checking if they are logged in from our app.rb method 'logged_in?'
            redirect "/login" #redirecting if not logged in
        else
            "An edit plant form" #rendering form if they are logged in
        end
    end


end
