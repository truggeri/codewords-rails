class Player < ApplicationRecord
  belongs_to :game

  validates :name, presence: true, length: { maximum: 200 }
  enum team: { blue: 0, red: 1 }

  def self.random_team
    Random.rand(0..1).zero? ? :blue : :red
  end
end
