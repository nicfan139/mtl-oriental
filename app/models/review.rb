class Review < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant

  validates :user_id, presence: true
  validates :restaurant_id, presence: true, uniqueness: {scope: :user_id}
  validates :rating, presence: true, inclusion: { in: [1, 2, 3, 4, 5] }
  validates :review, presence: true, length: {
    minimum: 10,
    maximum: 1000,
    too_short: "Your review must have at least 10 characters!",
    too_long: "Your review must be less than 1000 characters!"
  }
end
