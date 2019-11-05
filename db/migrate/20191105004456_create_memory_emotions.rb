class CreateMemoryEmotions < ActiveRecord::Migration[6.0]
  def change
    create_table :memory_emotions do |t|
      t.integer :memory_id
      t.integer :emotion_id

      t.timestamps
    end
  end
end
