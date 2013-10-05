class Author < ActiveRecord::Base
	has_many :posts
  	attr_accessible :bio, :email, :first_name, :last_name, :twitter, :username
  	# presence
  	validates :email, :first_name, :last_name, :username, presence: true
  	# uniqueness
  	validates :email, :twitter, :username, uniqueness: true, allow_blank: true
  	# format
  	validates :bio, length: {in: 30..500}
  	validates :email, format: {with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i}
end
