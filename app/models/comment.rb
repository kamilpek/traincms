class Comment < ApplicationRecord
  belongs_to :article

  geocoded_by :ip
  after_validation :geocode
end
