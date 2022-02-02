class Plant < ApplicationRecord
  belongs_to :garden
  validates :image_url, presence: true
end
