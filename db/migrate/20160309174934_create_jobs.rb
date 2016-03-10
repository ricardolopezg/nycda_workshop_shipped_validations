class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.integer :boat_id
      t.integer :containers_needed
      t.string :cargo
      t.string :origin
      t.string :destination
      t.decimal :cost
      t.datetime :delivery_date

      t.timestamps null: false
    end
  end
end
