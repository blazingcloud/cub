class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.string :name
      t.datetime :start_time
      t.string :location
      t.integer :event_id

      t.timestamps
    end
  end
end
