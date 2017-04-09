class Article < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_many :comment
  has_many :tag_ref

  mount_uploader :image, ArticleImageUploader
end
