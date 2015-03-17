class Request < ActiveRecord::Base
  belongs_to :user
  
  validates :book_name, :book_url, :state, presence: true
end