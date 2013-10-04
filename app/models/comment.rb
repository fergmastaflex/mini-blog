class Comment < ActiveRecord::Base
  belongs_to :post
  attr_accessible :commenter_name, :messages, :post_id
end
