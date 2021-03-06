class User < ActiveRecord::Base
  has_many :surveys
  has_many :responses
  has_many :answers, through: :responses
  has_many :questions, through: :answers
  has_many :survey_takens, through: :questions, source: :survey

  validates :first_name, :last_name, :user_name, :email, :password_hash, presence: true
  validates :user_name, :email, uniqueness: true

  def password
    @password ||= BCrypt::Password.new(password_hash)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.password_hash = @password
  end

  def authenticate(password)
    self.password == password
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def total_surveys_taken
    self.survey_takens.distinct.count
  end

  def total_surveys_created
    Survey.where(creator_id: self.id).length
  end

  def surveys_created
    Survey.where(creator_id: self.id)
  end
end

 # has_one :question, through: :answer
 #  has_one :survey, through: :question
