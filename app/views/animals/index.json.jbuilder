json.array!(@animals) do |animal|
  json.extract! animal, :name, :eartag, :reg_num, :sex_id, :date_birth, :date_acquired, :date_removed, :status_id, :num_horns, :sire_id, :dam_id, :source_id, :origin_id, :percent_black, :percent_lilac, :for_sale, :for_sale_status_id, :quality_id, :sale_price, :to_be_culled, :comments, :comments_web, :show_on_website, :core_flock, :birth_id, :rejected_at_birth
  json.url animal_url(animal, format: :json)
end
