class Response < ActiveRecord::Base
  belongs_to :user
  belongs_to :answer
  has_one :question, through: :answer
  has_one :survey, through: :question


end

# has_many :questions
#   has_many :answers, through: :questions
#   # has_many :responders, { foreign_key: :responder_id } , through: :answers
#   belongs_to :creator, class_name: 'User', foreign_key: 'creator_id'
#   has_many :responses, through: :answers
#   has_many :users, through: :responses
