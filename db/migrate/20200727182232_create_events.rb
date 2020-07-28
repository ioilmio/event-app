class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.string :description
      t.string :attended_by
      t.string :created_by
      t.datetime :date
      t.integer :creator_id

      t.timestamps
    end
    add_index :events, :creator_id
  end
end
