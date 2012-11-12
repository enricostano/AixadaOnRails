require 'test_helper'

class MembersControllerTest < ActionController::TestCase
  setup do
    @member = members(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:members)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create member" do
    assert_difference('Member.count') do
      post :create, member: { active: @member.active, address: @member.address, adult: @member.adult, city: @member.city, custom_member_ref: @member.custom_member_ref, family_unit_id: @member.family_unit_id, name: @member.name, nif: @member.nif, notes: @member.notes, participant: @member.participant, phone1: @member.phone1, phone2: @member.phone2, web: @member.web, zip: @member.zip }
    end

    assert_redirected_to member_path(assigns(:member))
  end

  test "should show member" do
    get :show, id: @member
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @member
    assert_response :success
  end

  test "should update member" do
    put :update, id: @member, member: { active: @member.active, address: @member.address, adult: @member.adult, city: @member.city, custom_member_ref: @member.custom_member_ref, family_unit_id: @member.family_unit_id, name: @member.name, nif: @member.nif, notes: @member.notes, participant: @member.participant, phone1: @member.phone1, phone2: @member.phone2, web: @member.web, zip: @member.zip }
    assert_redirected_to member_path(assigns(:member))
  end

  test "should destroy member" do
    assert_difference('Member.count', -1) do
      delete :destroy, id: @member
    end

    assert_redirected_to members_path
  end
end
