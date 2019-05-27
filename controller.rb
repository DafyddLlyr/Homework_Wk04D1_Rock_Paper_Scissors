require("sinatra")
require("sinatra/contrib/all")
require_relative("models/game")
also_reload("models/*")

get '/' do
  erb(:home)
end

get "/:player_1" do
  @player_1 = params[:player_1]
  erb(:holding_page)
end

get "/:first/:second" do
  game = Game.new(params[:first], params[:second])
  @result = game.play()
  erb(:game)
end
