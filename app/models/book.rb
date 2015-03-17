class Book < ActiveRecord::Base
  belongs_to :category
  has_many :reviews
  has_many :likes
  has_many :comments
  has_many :favorites
  has_many :book_states
  
  validates :title, presence: true, length: {minimum: 6}
  validates :author, presence: true, length: {minimum: 6}
  validates :publish_date, :number_page, :rating, presence: true
end