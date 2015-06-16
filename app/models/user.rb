class User < ActiveRecord::Base
  validates_presence_of :email
  validates_presence_of :password
  validates_uniqueness_of :email
  include BCrypt

  has_one :personal_deck
  has_many :games

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

  def self.create_user(user_data)
    self.create(email: user_data[:email], password: user_data[:pw])
  end

  def self.find_by_email(email)
    self.find_by(email: email)
  end
end
