class Event < ApplicationRecord
  belongs_to :user
  has_many :event_guest

  mount_uploader :image, EventImageUploader
end
