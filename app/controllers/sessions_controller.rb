class SessionsController < ApplicationController

    get '/login' do
        erb :"sessions/login"
    end

    post '/sessions' do #login a user with this email
        login(params[:email], params[:password]) #alt-session[:email] = params[:email] we put the params[:email] into the session[:email] to persist it into the users session
        redirect '/posts'
    end

    get '/logout' do #will log the user out
        logout! #inherits this method from our app.rb logout method
        redirect '/posts'
    end



end
