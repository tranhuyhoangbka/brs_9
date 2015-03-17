class Category < ActiveRecord::Base
  has_many :books
  
  validates :name, :image, presence: true
end