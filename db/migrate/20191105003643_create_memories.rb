class CreateMemories < ActiveRecord::Migration[6.0]
  def change
    create_table :memories do |t|
      t.string :title
      t.string :content
      t.integer :user_id
      t.integer :memories_count

      t.timestamps
    end
  end
end
