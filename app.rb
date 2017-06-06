require 'sinatra'
require 'sass'

class Capybara101 < Sinatra::Base
  enable :sessions

  helpers do
    def logged_in?
      session[:user]
    end
  end

  get "/" do
    if session[:user]
      redirect '/dashboard'
    else
      haml :index
    end
  end
  
  post '/login' do
    if params[:username].length == 0 || params[:password] == 0
      @message = 'Neither the username nor the password may be empty'
      haml :index
    elsif params[:username] == params[:password]
      session[:user] = params[:username]
      redirect to '/dashboard'
    else
      @message = 'Your username & password did not match'
      haml :index
    end
  end

  get '/logout' do
    @message = 'You have been logged out'
    session.clear
    haml :index
  end

  get '/dashboard' do
    if session[:user]
      @username = session[:user]
      haml :dashboard
    else
      redirect '/'
    end
  end
end
