require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      @team = Team.new(params[:team])

      @heroes = []
      params[:team][:heroes].each do |hero_details|
        hero = Hero.new(hero_details)
        @heroes << hero
      end

      erb :team
    end

end
