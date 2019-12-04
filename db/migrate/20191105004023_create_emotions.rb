class CreateEmotions < ActiveRecord::Migration[6.0]
  def change
    create_table :emotions do |t|
      t.string :name
      t.integer :emotions_count

      t.timestamps
    end
  end
end
