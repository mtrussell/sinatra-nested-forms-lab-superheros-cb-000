require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      @team = params[:team]

      @heros = []
      params[:team][:heros].each do |hero_details|
        hero = hero_details
        @heros << 
      end
      
      erb :team
    end

end
