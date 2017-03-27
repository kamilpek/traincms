class Article < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_many :comment

  mount_uploader :image, ArticleImageUploader
end
