require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do 
    	erb :root
    end

    get '/new' do 

    	erb :'pirates/new'

    end

    post '/pirates' do 

    	pirate = params[:pirate]
    	
    	@s1 = Ship.new(pirate[:ships][0][:name], pirate[:ships][0][:type], pirate[:ships][0][:booty])
    	@s2 = Ship.new(pirate[:ships][1][:name], pirate[:ships][1][:type], pirate[:ships][1][:booty])

    	@p = Pirate.new(pirate[:name], pirate[:height], pirate[:weight])
    	@p.add_ship(@s1)
    	@p.add_ship(@s2)

    	erb :'pirates/show'

    end



  end
end
