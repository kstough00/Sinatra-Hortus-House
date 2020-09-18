require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions #sessions are basically a hash stored in the browser of the user.
    set :session_secret, "whatever"
  end

  helpers do #helper methods available to the whole application
    def logged_in? #sets an easy method for us to check the truthiness value of our user being logged in or not
      !!session[:user_id] #double negation takes the object and converts it into a binary value of 'true' or 'false' (checks truthiness)
    end

    def current_user 
      @user = User.find_by_id(session[:user_id]) if logged_in?
    end

    def find_plant
      @plant = Plant.find_by_id(params[:id]) if logged_in?
    end

    def login(email, password) #is the user who they claim to be?
      user = User.find_by(:email => email)
      if user && user.authenticate(password)
        session[:email] = user.email
      else
        redirect '/login'
      end
    end

    def logout!
      session.clear
    end

    def delete
      find_plant
      @plant.destroy
    end

  end

  get '/users/new' do
    erb :'users/new'
  end

  get "/" do
    erb :welcome
  end

end
