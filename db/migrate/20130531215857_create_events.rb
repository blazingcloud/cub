class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.date :start_date
      t.date :end_date
      t.string :location
      t.string :url

      t.timestamps
    end
  end
end
