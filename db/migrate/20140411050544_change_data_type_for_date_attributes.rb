class ChangeDataTypeForDateAttributes < ActiveRecord::Migration
  def self.up
    change_table :animals do |t|
      t.change :date_acquired, :date
      t.change :date_removed, :date
    end
  end
  def self.down
    change_table :animals do |t|
      t.change :date_acquired, :text
      t.change :date_removed, :text
    end
  end
end
