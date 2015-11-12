get '/games/index' do
  @games = Game.order(:created_at)
  erb :'games/index'
end

get '/games/new' do
  erb :'games/new'
end

post '/games' do
  @game = Game.new(params[:game])
  if @game.save
    redirect "/games/#{@game.id}"
  else
    @errors = @game.errors.full_messages
    erb :'games/new'
  end
end

get '/games/:id' do
  @game = Game.find(params[:id])
  erb :'games/show'
end

get '/games/:id/edit' do
  @game = Game.find(params[:id])
  erb :'games/edit'
end

put '/games/:id' do
  game = Game.find(params[:id])
  game.update_attributes(params[:game])
  redirect "/games/#{game.id}"
end

delete '/games/:id' do
  game = Game.find(params[:id])
  game.destroy
  redirect '/games/index'
end
