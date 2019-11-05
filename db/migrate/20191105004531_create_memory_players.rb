class CreateMemoryPlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :memory_players do |t|
      t.integer :memory_id
      t.integer :player_id

      t.timestamps
    end
  end
end
