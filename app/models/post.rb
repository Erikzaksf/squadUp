class Post < ActiveRecord::Base

  has_many :comments

  belongs_to :user

  mount_uploader :image, ImageUploader

  validates :title, :body, :user_id, presence: true


end
