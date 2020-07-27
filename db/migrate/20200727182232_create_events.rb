class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.string :description
      t.string :attended_by
      t.string :created_by
      t.datetime :date

      t.timestamps
    end
  end
end
