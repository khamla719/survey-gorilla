post '/responses' do
  params.each_value do |param|
    responses = Response.create(answer_id: param, user_id: session[:user_id])
  end
  redirect '/surveys'
end