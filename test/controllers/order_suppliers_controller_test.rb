require 'test_helper'

class OrderSuppliersControllerTest < ActionController::TestCase
  setup do
    @order_supplier = order_suppliers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:order_suppliers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create order_supplier" do
    assert_difference('OrderSupplier.count') do
      post :create, order_supplier: { group_id: @order_supplier.group_id, order_id: @order_supplier.order_id, position: @order_supplier.position, supplier_id: @order_supplier.supplier_id }
    end

    assert_redirected_to order_supplier_path(assigns(:order_supplier))
  end

  test "should show order_supplier" do
    get :show, id: @order_supplier
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @order_supplier
    assert_response :success
  end

  test "should update order_supplier" do
    patch :update, id: @order_supplier, order_supplier: { group_id: @order_supplier.group_id, order_id: @order_supplier.order_id, position: @order_supplier.position, supplier_id: @order_supplier.supplier_id }
    assert_redirected_to order_supplier_path(assigns(:order_supplier))
  end

  test "should destroy order_supplier" do
    assert_difference('OrderSupplier.count', -1) do
      delete :destroy, id: @order_supplier
    end

    assert_redirected_to order_suppliers_path
  end
end
