class Beer < ApplicationRecord
  belongs_to :company
  validates :name, :description, :price, presence: true
  validates :price, numericality: true
end
