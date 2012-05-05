class Micropost < ActiveRecord::Base
  belongs_to :user
  attr_accessible :content, :user_id
  validate :content, :length => { :maximum => 140 }
end
