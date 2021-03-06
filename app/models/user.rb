class User < ActiveRecord::Base
  validates :username, presence: true, 
            uniqueness: { case_sensitive: false }, 
            length: {minimum: 3, maximum: 20}
  
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presnece: true,
            length: {maximum: 50}, uniqueness: { case_sensitive: false },
            format: { with: VALID_EMAIL_REGEX }
end
