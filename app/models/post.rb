class Post < ActiveRecord::Base

  has_many :comments

  belongs_to :user

  scope :ten_most_recent, -> { order(updated_at: :desc).limit(10)}

  # scope :desc, -> {order (updated_at: :desc)}

  mount_uploader :image, ImageUploader

  validates :title, :body, :user_id, presence: true


end
