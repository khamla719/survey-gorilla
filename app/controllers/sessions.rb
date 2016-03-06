post '/users/login' do
  user = User.find_by(email: params[:email])
  if user.authenticate(params[:password])
    session[:user_id] = user.id
    session[:name] = user.full_name
    redirect '/users'
  else
    erb :index
  end
end

post '/users/logout' do
  session[:user_id] = nil
  session[:name] = nil
  redirect '/'
end
