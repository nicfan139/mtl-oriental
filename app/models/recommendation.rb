class Recommendation < ApplicationRecord
  belongs_to :restaurant
  validates :content, presence: true, length: {
    minimum: 5,
    too_short: "Text needs to be at least 5 characters!",
    maximum: 200,
    too_long: "Text cannot exceed 200 characters!"
  }
end
