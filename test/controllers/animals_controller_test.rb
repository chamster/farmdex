require 'test_helper'

class AnimalsControllerTest < ActionController::TestCase
  setup do
    @animal = animals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:animals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create animal" do
    assert_difference('Animal.count') do
      post :create, animal: { birth_id: @animal.birth_id, comments: @animal.comments, comments_web: @animal.comments_web, core_flock: @animal.core_flock, dam_id: @animal.dam_id, date_acquired: @animal.date_acquired, date_birth: @animal.date_birth, date_removed: @animal.date_removed, eartag: @animal.eartag, for_sale: @animal.for_sale, for_sale_status_id: @animal.for_sale_status_id, name: @animal.name, num_horns: @animal.num_horns, origin_id: @animal.origin_id, percent_black: @animal.percent_black, percent_lilac: @animal.percent_lilac, quality_id: @animal.quality_id, reg_num: @animal.reg_num, rejected_at_birth: @animal.rejected_at_birth, sale_price: @animal.sale_price, sex_id: @animal.sex_id, show_on_website: @animal.show_on_website, sire_id: @animal.sire_id, source_id: @animal.source_id, status_id: @animal.status_id, to_be_culled: @animal.to_be_culled }
    end

    assert_redirected_to animal_path(assigns(:animal))
  end

  test "should show animal" do
    get :show, id: @animal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @animal
    assert_response :success
  end

  test "should update animal" do
    patch :update, id: @animal, animal: { birth_id: @animal.birth_id, comments: @animal.comments, comments_web: @animal.comments_web, core_flock: @animal.core_flock, dam_id: @animal.dam_id, date_acquired: @animal.date_acquired, date_birth: @animal.date_birth, date_removed: @animal.date_removed, eartag: @animal.eartag, for_sale: @animal.for_sale, for_sale_status_id: @animal.for_sale_status_id, name: @animal.name, num_horns: @animal.num_horns, origin_id: @animal.origin_id, percent_black: @animal.percent_black, percent_lilac: @animal.percent_lilac, quality_id: @animal.quality_id, reg_num: @animal.reg_num, rejected_at_birth: @animal.rejected_at_birth, sale_price: @animal.sale_price, sex_id: @animal.sex_id, show_on_website: @animal.show_on_website, sire_id: @animal.sire_id, source_id: @animal.source_id, status_id: @animal.status_id, to_be_culled: @animal.to_be_culled }
    assert_redirected_to animal_path(assigns(:animal))
  end

  test "should destroy animal" do
    assert_difference('Animal.count', -1) do
      delete :destroy, id: @animal
    end

    assert_redirected_to animals_path
  end
end
