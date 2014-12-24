require 'test_helper'

class ItemsControllerTest < ActionController::TestCase
  setup do
    @item = items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create item" do
    assert_difference('Item.count') do
      post :create, item: { kgxunit: @item.kgxunit, minall: @item.minall, mingroup: @item.mingroup, minunit: @item.minunit, name: @item.name, note: @item.note, order_id: @item.order_id, price: @item.price, product_id: @item.product_id, supplier_id: @item.supplier_id, unittype: @item.unittype }
    end

    assert_redirected_to item_path(assigns(:item))
  end

  test "should show item" do
    get :show, id: @item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @item
    assert_response :success
  end

  test "should update item" do
    patch :update, id: @item, item: { kgxunit: @item.kgxunit, minall: @item.minall, mingroup: @item.mingroup, minunit: @item.minunit, name: @item.name, note: @item.note, order_id: @item.order_id, price: @item.price, product_id: @item.product_id, supplier_id: @item.supplier_id, unittype: @item.unittype }
    assert_redirected_to item_path(assigns(:item))
  end

  test "should destroy item" do
    assert_difference('Item.count', -1) do
      delete :destroy, id: @item
    end

    assert_redirected_to items_path
  end
end
