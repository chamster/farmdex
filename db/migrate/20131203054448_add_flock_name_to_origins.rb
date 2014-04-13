class AddFlockNameToOrigins < ActiveRecord::Migration
  def change
    add_column :origins, :flock_name, :string
  end
end
