ENV['RACK_ENV'] ||= "development"
require 'sinatra/base'
require_relative "models/data_mapper_setup"
require_relative 'models/link'
require_relative 'models/bookmark'
require_relative 'models/user'

class BookmarkManager < Sinatra::Base
  enable :sessions
  set :session_secret, 'super secret'

  database_setup

  get "/" do
    @bookmark = Bookmark.new
    @links = Link.all
    erb :index
  end

  get "/add" do
    erb :add
  end

  post "/" do
    bookmark = Bookmark.new
    bookmark.create_link(params[:url], params[:title])
    bookmark.add_tags(params[:tags])
    redirect "/"
  end

  get "/tags/bubbles" do
    @bookmark = Bookmark.new
    erb :bubbles
  end

  get "/sign_up" do
    erb :sign_up
  end

  post "/sign_up" do
    user = User.create(email: params[:email], password: params[:password])
    session[:user_id] = user.id
    redirect "/"
  end

  helpers do
    def current_user
      @current_user ||= User.get(session[:user_id])
    end
  end



  run! if app_file == $0
end
