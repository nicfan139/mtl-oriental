class Restaurant < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  has_many :recommendations, dependent: :destroy

  validates :name, presence: true
  validates :category, presence: true
  validates :address, presence: true, length: { minimum: 10 }
  validates :district, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
