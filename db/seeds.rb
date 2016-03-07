10.times {User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, user_name: Faker::Internet.user_name, email: Faker::Internet.email, password: 'test1234', profile_picture: Faker::Avatar.image)}


10.times do
  Survey.create(creator_id: User.all.sample(1)[0].id, 
    category: Faker::Lorem.sentence(3),
    title: Faker::Lorem.sentence(5) )
end

20.times do
  Question.create(survey_id: Survey.all.sample(1)[0].id,
    content: Faker::Lorem.sentence(12))
end

30.times do
  Answer.create(question_id: Question.all.sample(1)[0].id,
    content: Faker::Lorem.sentence(12))
end

70.times do
  Response.create(answer_id: Answer.all.sample(1)[0].id,
    user_id: User.all.sample(1)[0].id)
end
