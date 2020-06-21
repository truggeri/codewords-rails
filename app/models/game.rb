class Game < ApplicationRecord
  has_many :player

  accepts_nested_attributes_for :player
  
  validates :name, presence: true, length: { maximum: 200 }
end
