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
    haml :index
  end

  post '/login' do
    if params[:username] == params[:password]
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

  get "/dashboard" do
    if logged_in?
      @username = session[:user]
      haml :dashboard
    else
      @message = 'Access Denied: Please login to view page'
      haml :index
    end
  end
end
