require("sinatra")
require("sinatra/contrib/all")
require_relative("models/game")
also_reload("models/*")

get '/' do
  erb(:home)
end

get "/:first/:second" do
  game = Game.new(params[:first], params[:second])
  @result = game.play()
  erb(:game)
end
