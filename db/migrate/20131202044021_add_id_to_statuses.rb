class AddIdToStatuses < ActiveRecord::Migration
  def change
    add_column :statuses, :id, :primary_key
  end
end
