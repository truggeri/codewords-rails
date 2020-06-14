class Game < ApplicationRecord
  validates :name, presence: true, length: { maximum: 200 }
end
