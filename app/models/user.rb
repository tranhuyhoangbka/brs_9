class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :comments
  has_many :likes
  has_many :reviews
  has_many :book_states
  has_many :favorites
  has_many :relationships
  has_many :activities
  has_many :requests
end