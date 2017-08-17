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

  get '/signupcharity' do    
    erb :signupcharity
  end 

  get '/signupschool' do    
    erb :signupschool
  end 

  get '/signin' do    
    erb :signin
  end 

  get '/donate' do    
    erb :donate
  end 

  get '/returntohome' do    
    erb :returntohome
  end 

  get '/studenthome' do    
    erb :studenthome
  end 

  get '/charityhome' do    
    erb :charityhome
  end 

  get '/schoolhome' do    
    erb :schoolhome
  end 

  get '/directions' do    
    erb :directions
  end 

  get '/charity' do    
    erb :charity
  end 

  get '/postevents' do    
    erb :postevents
  end 

  get '/studentlist' do    
    erb :studentlist
  end 

  post '/studenthome' do
    if "Student" == params[:type]
      redirect ('/studenthome')
    elsif "Charity" == params[:type]
      redirect ('/charityhome')
    else
      redirect ('/schoolhome')
  end

end 

end
