class ChangeDataTypeForMultiColumns < ActiveRecord::Migration
  def self.up
    change_table :animals do |t|
      t.change :reg_num, :string
      t.change :date_birth, :date
    end
  end
  def self.down
    change_table :animals do |t|
      t.change :reg_num, :text
      t.change :date_birth, :text
    end
  end
end
