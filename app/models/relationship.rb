class Relationship < ActiveRecord::Base
  validates :followed_id, :follower_id, presence: true
end