class UsersController < ApplicationController
    get "/signup" do
        erb :"/users/new"
    end

    post "/users" do
        if params[:password] == params[:password_confirm] #front end pw confirmation
            params.delete(:password_confirm)
            user = User.create(params)
            session[:user_id] = user.id 
            redirect "/plants"
        else
            redirect "/signup"
        end
    end
        
end
