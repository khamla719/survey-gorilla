class Survey < ActiveRecord::Base
  has_many :questions
  has_many :answers, through: :questions
  belongs_to :creator, class_name: 'User', foreign_key: 'creator_id'
  has_many :responses, through: :answers
  has_many :users, through: :responses
end
