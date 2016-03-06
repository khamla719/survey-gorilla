class Survey < ActiveRecord::Base
  has_many :questions
  has_many :answers, through: :questions
  # has_many :responders, { foreign_key: :responder_id } , through: :answers
end
