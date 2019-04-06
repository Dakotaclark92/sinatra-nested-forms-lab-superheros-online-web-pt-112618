require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    erb :super_hero
  end
  
  post '/teams' do
    @team = Team.new(name: params[:team][:name], motto: params[:team][:motto])
    members = params[:team][:members]
    
    members.each do |member_params|
      Hero.new({name: member_params[:name], power: member_params[:power], biography: member_params[:biography]})
    end
    @hero = Hero.all
    
    erb :team
    
  end
  
  
end