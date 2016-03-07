get '/surveys' do
  #shows all records
  @surveys = Survey.all
  erb :'surveys/index'
end

get '/surveys/new' do
  #get form to create new record
  erb :'surveys/new_survey'
end

post '/surveys' do
  #create new survey record
  @survey = Survey.create(title: params[:title], category: params[:category])
  redirect "/surveys/#{@survey.id}/question/new"
end

get '/surveys/:id/question/new' do
  #get for for new question and answers
  erb :'surveys/new_question'
end

post '/surveys/question' do
  #create new question and answers
  @question = Question.create(content: params[:content])
  Answer.create(content: params[:answer1], question_id: @question.id)
  Answer.create(content: params[:answer2], question_id: @question.id)
  Answer.create(content: params[:answer3], question_id: @question.id)
  Answer.create(content: params[:answer4], question_id: @question.id)
  redirect "/surveys"
end

get '/surveys/:id' do
  @survey = Survey.find_by(id: params[:id])
  erb :'/surveys/show'
end

get '/surveys/:id/edit' do
  #get form to edit existing record
  erb :'surveys/edit'
end

put '/surveys/:id' do
  #edits existing record
end

delete '/surveys/:id' do
  survey = Survey.find(params[:id])
  survey.destroy
  redirect '/users'
end

