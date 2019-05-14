require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/create_puppy' do

    erb :create_puppy
  end

  get '/new' do

    erb :create_puppy
  end

  post '/puppy' do
    puppy = Puppy.new(name: params[:name], breed: params[:breed], months_old: params[:age])
    @name = puppy.name
    @breed = puppy.breed
    @age = puppy.months_old

    erb :display_puppy
  end

end
