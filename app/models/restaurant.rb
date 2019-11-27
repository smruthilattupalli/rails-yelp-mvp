class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :delete_all
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true

  CATEGORY = %w[chinese italian japanese french belgian].freeze
  validates :category, inclusion: { in: CATEGORY }
end
