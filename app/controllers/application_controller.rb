require './config/environment'
require 'pry'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
      enable :sessions
    set :session_secret, 'fwitter'
  end

  get '/' do    
    erb :index
  end 

  get '/aboutus' do
    #@items = Item.all   		
  	erb :aboutus
  end 

  get '/people' do    
    erb :people
  end 

  get '/signup' do    
    erb :signup
  end 

  get '/contactus' do    
    erb :contactus
  end 

  get '/backtohome' do    
    erb :backtohome
  end 


  #post '/cart' do
  #new_merch = Merch.new({:merch => params[:merch], :count => params[:count], :cost => params[:cost]})
  #new_merch.save
  #redirect ('/cart')
  #end 

end
