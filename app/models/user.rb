class User < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  has_many :reviews, dependent: :destroy

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :first_name, presence: true, format: { with: /\A[\w\s]+\z/, message: "only allows letters and whitespace" }
  validates :last_name, presence: true, format: { with: /\A[\w\s]+\z/, message: "only allows letters and whitespace" }
end
