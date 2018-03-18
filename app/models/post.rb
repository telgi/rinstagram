class Post < ApplicationRecord
  validates :caption, presence: true
  mount_uploader :image, ImageUploader
  belongs_to :user
end
