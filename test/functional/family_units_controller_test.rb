require 'test_helper'

class FamilyUnitsControllerTest < ActionController::TestCase
  setup do
    @family_unit = family_units(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:family_units)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create family_unit" do
    assert_difference('FamilyUnit.count') do
      post :create, family_unit: { active: @family_unit.active, mentor_familyunit_id: @family_unit.mentor_familyunit_id, name: @family_unit.name }
    end

    assert_redirected_to family_unit_path(assigns(:family_unit))
  end

  test "should show family_unit" do
    get :show, id: @family_unit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @family_unit
    assert_response :success
  end

  test "should update family_unit" do
    put :update, id: @family_unit, family_unit: { active: @family_unit.active, mentor_familyunit_id: @family_unit.mentor_familyunit_id, name: @family_unit.name }
    assert_redirected_to family_unit_path(assigns(:family_unit))
  end

  test "should destroy family_unit" do
    assert_difference('FamilyUnit.count', -1) do
      delete :destroy, id: @family_unit
    end

    assert_redirected_to family_units_path
  end
end
