class Post < ActiveRecord::Base

  has_many :comments

  # belongs_to :user
  # add once user funtionality is working

  validates :title, :presence => true
  validates :body, :presence => true

end
