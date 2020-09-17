class UsersController < ApplicationController
    get "/signup" do
        erb :"/users/new"
    end

    post "/signup" do
        # if params[:password] == params[:password] #password validation, checks to make sure fields are not blank
        #     params.delete(:password)
            user = User.new(params)
            if user.save
                session[:user_id] = user.id
                redirect "/plants"
            else
                @errors = user.errors.full_messages
                erb :"/users/new"
            end
        # else
        #     binding.pry
        #     redirect "/signup"
        # end
    end
        
end
