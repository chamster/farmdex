class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.string :name
      t.text :eartag
      t.text :reg_num
      t.integer :sex_id
      t.text :date_birth
      t.text :date_acquired
      t.text :date_removed
      t.integer :status_id
      t.integer :num_horns
      t.integer :sire_id
      t.integer :dam_id
      t.integer :source_id
      t.integer :origin_id
      t.integer :percent_black
      t.integer :percent_lilac
      t.integer :for_sale
      t.integer :for_sale_status_id
      t.integer :quality_id
      t.integer :sale_price
      t.integer :to_be_culled
      t.text :comments
      t.text :comments_web
      t.integer :show_on_website
      t.integer :core_flock
      t.integer :birth_id
      t.integer :rejected_at_birth

      t.timestamps
    end
  end
end
