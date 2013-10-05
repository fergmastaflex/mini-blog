class Comment < ActiveRecord::Base
  belongs_to :post
  attr_accessible :commenter_name, :messages, :post_id
  validates :commenter_name,
  			presence: true,
  			length: {maximum: 30}
  validates :messages,
  			length: {maximum: 500}

end
