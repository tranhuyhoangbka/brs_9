class Category < ActiveRecord::Base
  has_many :books
  
  mount_uploader :image, ImageUploader
  
  validates :name, presence: true
  validate :image_size

  private
  def image_size
    if image.size > 5.megabytes
      errors.add(:image, "Should be less than 5MB")
    end
  end
end