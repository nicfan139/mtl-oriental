class Review < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant

  validates :rating, presence: true, inclusion: { in: [1, 2, 3, 4, 5] }
  validates :review, presence: true
end
