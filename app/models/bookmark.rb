class Bookmark < ApplicationRecord
  mount_uploader :image, BookmarkImageUploader
end
