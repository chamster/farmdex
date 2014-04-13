class AddIdToSexes < ActiveRecord::Migration
  def change
    add_column :sexes, :id, :primary_key
  end
end
