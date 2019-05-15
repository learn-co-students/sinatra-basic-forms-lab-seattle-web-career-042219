require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/puppy' do
    # puts params
    # binding.pry
    newpup = Puppy.new(params['name'], params['breed'], params['age'])

    @name = newpup.name
    @breed = newpup.breed
    @age = newpup.months_old
    
    # @name = params[:name]
    # @breed = params[:breed]
    # @age = params[:age]

    erb :display_puppy
  end

end
