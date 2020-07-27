class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :created_events
      t.string :attended_events
      t.boolean :events_creator
      t.string :received_events_invitations
      t.string :sent_events_invitations

      t.timestamps
    end
  end
end
