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
  validate :image_size

  mount_uploader :image, ImageUploader
  
  private

  def image_size
    errors.add(:image, "should be less than 5MB") if image.size > 5.megabytes
  end
end