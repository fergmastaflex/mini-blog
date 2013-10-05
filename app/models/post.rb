class Post < ActiveRecord::Base
	has_many :comments
	belongs_to :author
  attr_accessible :body, :published_at, :title, :author_id
  validates :body,
  			presence: true
  validates :title,
  			presence: true,
  			length: {in: 5..25}
  validates :author,
  			presence: {message: "must be a real author that exists"}
end
