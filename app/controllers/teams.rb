get '/teams/index' do
  @teams = Team.order(:created_at)
  erb :'teams/index'
end

get '/teams/:id' do
  @team = Team.find(params[:id])
  erb :'teams/show'
end


