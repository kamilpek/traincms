class Event < ApplicationRecord
  belongs_to :user

  mount_uploader :image, EventImageUploader
end
