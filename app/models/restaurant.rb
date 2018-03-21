class Restaurant < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  validates :name, presence: true
  validates :category, presence: true, inclusion: { in: ["Chinese", "Japanese", "Korean", "Vietnamese", "Indian", "Other"] }
  validates :address, presence: true, length: { minimum: 10 }
  validates :district, presence: true
end
