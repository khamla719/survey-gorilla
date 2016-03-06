get '/surveys' do
  #shows all records
  erb :'surveys/index'
end

get '/surveys/new' do
  #get form to create new record
  erb :'surveys/new'
end

# post '/surveys' do
#   #create new record
# end

get '/surveys/:id' do
  #show specific answer
  erb :'/surveys/show'
end

get '/surveys/:id/edit' do
  #get form to edit existing record
  erb :'surveys/edit'
end

# put '/surveys/:id' do
#   #edits existing record
# end

# delete '/surveys/:id' do
#   #deletes existing record
# end

