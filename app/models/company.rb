class Company < ApplicationRecord
  has_many :beers, dependent: :destroy
  validates :name, presence: true
end
