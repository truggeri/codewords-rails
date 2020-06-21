class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.bigint  :game_id, null: false
      t.string  :name,    null: false
      t.integer :team,    null: false, default: 0

      t.timestamps
    end
  end
end
