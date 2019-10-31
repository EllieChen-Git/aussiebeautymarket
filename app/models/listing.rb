class Listing < ApplicationRecord
  belongs_to :user
  belongs_to :location
  accepts_nested_attributes_for :location
  has_many :questions, dependent: :destroy
  # accepts_nested_attributes_for :questions
  has_one_attached :pic
  enum category: { face: 0, eyes: 1, lips: 2, accessories: 3 } 
  validates :title, :brand, :price, :description, :category, presence: true
end
