class CreateBoats < ActiveRecord::Migration
  def change
    create_table :boats do |t|
      t.integer :profile_id
      t.string :boat_name
      t.integer :container_capacity
      t.string :location

      t.timestamps null: false
    end
  end
end
