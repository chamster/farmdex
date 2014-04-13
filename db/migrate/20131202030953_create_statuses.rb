class CreateStatuses < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.text :status
      t.integer :sort_order

      t.timestamps
    end
  end
end
