class ChangeDataTypeForEartag < ActiveRecord::Migration
  def self.up
    change_table :animals do |t|
      t.change :eartag, :string
    end
  end
  def self.down
    change_table :animals do |t|
      t.change :eartag, :text
    end
  end
end
