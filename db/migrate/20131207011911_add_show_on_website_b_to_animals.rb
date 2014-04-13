class AddShowOnWebsiteBToAnimals < ActiveRecord::Migration
  def change
    add_column :animals, :show_on_website_b, :boolean
  end
end
