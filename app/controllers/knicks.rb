get '/knicks/index' do
  @knicks = Knick.order(:created_at)
  erb :'knicks/index'
end

get '/knicks/new' do
  erb :'knicks/new'
end

post '/knicks' do
  @knick = Knick.new(params[:knick])
  if @knick.save
    redirect "/knicks/#{@knick.id}"
  else
    @errors = @knick.errors.full_messages
    erb :'knicks/new'
  end
end

get '/knicks/:id' do
  @knick = Knick.find(params[:id])
  erb :'knicks/show'
end

get '/knicks/:id/edit' do
  @knick = Knick.find(params[:id])
  @knicks = Knick.all
  erb :'knicks/edit'
end

put '/knicks/:id' do
  knick = Knick.find(params[:id])
  knick.update_attributes(params[:knick])
  redirect "/knicks/#{knick.id}"
end

delete '/knicks/:id' do
  knick = Knick.find(params[:id])
  knick.destroy
  redirect '/knicks/index'
end


