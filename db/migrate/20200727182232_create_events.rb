class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.string :description
      t.datetime :date
      t.string :location
      t.integer :creator_id

      t.timestamps
    end
    add_index :events, :creator_id
  end
end
