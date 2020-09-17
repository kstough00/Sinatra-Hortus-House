class SessionController < ApplicationController

    get '/login' do #form that takes user credentials
        erb :"/session/login"
    end

    post '/login' do #gets user attempting login, authenticates with pw, if valid-logs in, else-redirect
        user = user.find_by(email: params[:email])
        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect "/plants"
        else
            redirect "/login"
        end
    end

    post '/logout' do #will log the user out
        logout! #inherits this method from our app.rb logout method
        redirect "/login"
    end


    post '/sessions' do #login a user with this email
        login(params[:email], params[:password]) #alt-session[:email] = params[:email] we put the params[:email] into the session[:email] to persist it into the users session
        redirect '/posts'
    end



end
