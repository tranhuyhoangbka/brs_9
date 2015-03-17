class Activity < ActiveRecord::Base
  belongs_to :user
  
  validates :target_id, :action_type, presence: true
end