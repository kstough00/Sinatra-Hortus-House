class UsersController < ApplicationController
    get "/signup" do
        erb :"/users/new"
    end

    post "/users" do
        if params[:email] != "" && params[:password] != "" && params[:password] == params[:password_confirm] #password validation, checks to make sure fields are not blank
            params.delete(:password_confirm)
            user = User.create(params)
            session[:user_id] = user.id 
            redirect "/plants"
        else
            redirect "/signup"
        end
    end
        
end
