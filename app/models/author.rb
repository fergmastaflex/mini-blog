class Author < ActiveRecord::Base
  has_secure_password
	has_many :posts
  has_many :comments, through: :posts
  	attr_accessible :bio, :email, :first_name, :last_name, :twitter, :username, :password, :password_confirmation
  	# presence
  	validates :email, :first_name, :last_name, :username, presence: true
  	# uniqueness
  	validates :email, :twitter, :username, uniqueness: true, allow_blank: true
  	# format
  	validates :bio, length: {in: 5..500}
  	validates :email, format: {with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i}
end
