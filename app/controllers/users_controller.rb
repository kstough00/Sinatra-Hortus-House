class UsersController < ApplicationController
    get "/signup" do
        erb :"/users/new"
    end

    post "/users" do
        if params[:password] == params[:password_confirm] #password validation, checks to make sure fields are not blank
            params.delete(:password_confirm)
            user = User.new(params)
            if user.save
                session[:user_id] = user.id
                redirect "/plants"
            else
                @errors = user.errors.full_messages
                erb :"/users/signup"
            end
        else
            redirect "/signup"
        end
    end
        
end
