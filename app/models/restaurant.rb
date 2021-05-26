class Restaurant < ApplicationRecord
has_many :reviews, dependent: :destroy

  FOODS = %w(chinese italian japanese french belgian)
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true
  validates :name, presence: true
  validates :category, inclusion: { in: FOODS }
end
