get '/players/index' do
  @players = Player.order(:created_at)
  erb :'players/index'
end

get '/players/new' do
  erb :'players/new'
end

post '/players' do
  @player = Player.new(params[:player])
  if @player.save
    redirect "/players/#{@player.id}"
  else
    @errors = @player.errors.full_messages
    erb :'players/new'
  end
end

get '/players/:id' do
  @player = Player.find(params[:id])
  erb :'players/show'
end

get '/players/:id/edit' do
  @player = Player.find(params[:id])
  @players = Player.all
  erb :'players/edit'
end

put '/players/:id' do
  player = Player.find(params[:id])
  player.update_attributes(params[:player])
  redirect "/players/#{player.id}"
end

delete '/players/:id' do
  player = Player.find(params[:id])
  Player.destroy
  redirect '/players/index'
end

