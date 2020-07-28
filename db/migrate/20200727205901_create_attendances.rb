class CreateAttendances < ActiveRecord::Migration[5.2]
  def change
    create_table :attendances do |t|
      t.integer :event_id
      t.integer :user_id
      t.timestamps
    end
    add_index :attendances, :user_id
    add_index :attendances, :event_id
  end
end
