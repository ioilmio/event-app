class CreateAttendances < ActiveRecord::Migration[5.2]
  def change
    create_table :attendances do |t|
      t.integer :attended_event_id
      t.integer :attendee_id
      t.timestamps
    end
    add_index :attendances, :attendee_id
    add_index :attendances, :attended_event_id
  end
end
