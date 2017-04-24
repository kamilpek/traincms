class Article < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_many :comment, dependent: :destroy
  has_many :tag_ref, dependent: :destroy 

  mount_uploader :image, ArticleImageUploader
end
