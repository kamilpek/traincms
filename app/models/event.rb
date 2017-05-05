class Event < ApplicationRecord
  belongs_to :user
  has_many :event_guest

  geocoded_by :adress 
  after_validation :geocode

  mount_uploader :image, EventImageUploader
end
