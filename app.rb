require 'sinatra'
require 'better_errors'

configure :development do
  use BetterErrors::Middleware
  BetterErrors.application_root = File.expand_path('..', __FILE__)
end

enable :sessions
set :session_secret, 'thisIsAKleerSecret'

get '/' do
    session["pikachu1"] = ""
    session["pikachu2"] = ""
        session["pikachu3"] = ""
    session["pikachu4"] = ""
        session["pikachu5"] = ""
    session["pikachu6"] = ""
        session["pikachu7"] = ""
    session["pikachu8"] = ""
    
    session["pikachu9"] = ""
    session["pikachu10"] = ""
        session["pikachu11"] = ""
    session["pikachu12"] = ""
        session["pikachu13"] = ""
    session["pikachu14"] = ""
        session["pikachu15"] = ""
    session["pikachu16"] = ""
	erb :index
end

get '/click' do
    posicion = params["posicion"]
    puts posicion
    session["pikachu#{posicion}"] = "mostrar"
	erb :index
end

get '/click2' do
    
    session["pikachu2"] = "4"
	erb :index
end