class CreateOrigins < ActiveRecord::Migration
  def change
    create_table :origins do |t|
      t.text :origin
      t.text :flock_name
      t.integer :sort_order

      t.timestamps
    end
  end
end
