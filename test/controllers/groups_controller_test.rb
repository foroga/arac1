require 'test_helper'

class GroupsControllerTest < ActionController::TestCase
  setup do
    @group = groups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:groups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create group" do
    assert_difference('Group.count') do
      post :create, group: { acount_id: @group.acount_id, acounting_unit_id: @group.acounting_unit_id, active: @group.active, address: @group.address, bill_unit_id: @group.bill_unit_id, dealtype: @group.dealtype, email: @group.email, error_unit_id: @group.error_unit_id, name: @group.name, note: @group.note, sw_unit_id: @group.sw_unit_id, telefone: @group.telefone }
    end

    assert_redirected_to group_path(assigns(:group))
  end

  test "should show group" do
    get :show, id: @group
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @group
    assert_response :success
  end

  test "should update group" do
    patch :update, id: @group, group: { acount_id: @group.acount_id, acounting_unit_id: @group.acounting_unit_id, active: @group.active, address: @group.address, bill_unit_id: @group.bill_unit_id, dealtype: @group.dealtype, email: @group.email, error_unit_id: @group.error_unit_id, name: @group.name, note: @group.note, sw_unit_id: @group.sw_unit_id, telefone: @group.telefone }
    assert_redirected_to group_path(assigns(:group))
  end

  test "should destroy group" do
    assert_difference('Group.count', -1) do
      delete :destroy, id: @group
    end

    assert_redirected_to groups_path
  end
end
