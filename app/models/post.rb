class Post < ActiveRecord::Base
	has_many :comments
	belongs_to :author
  attr_accessible :body, :published_at, :title, :author_id
end
