require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  setup do
    @product = products(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      post :create, product: { active: @product.active, imageurl: @product.imageurl, kgxunit: @product.kgxunit, minall: @product.minall, mingroup: @product.mingroup, minunit: @product.minunit, name: @product.name, note: @product.note, price: @product.price, priceold: @product.priceold, supplier_id: @product.supplier_id, unittype: @product.unittype }
    end

    assert_redirected_to product_path(assigns(:product))
  end

  test "should show product" do
    get :show, id: @product
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product
    assert_response :success
  end

  test "should update product" do
    patch :update, id: @product, product: { active: @product.active, imageurl: @product.imageurl, kgxunit: @product.kgxunit, minall: @product.minall, mingroup: @product.mingroup, minunit: @product.minunit, name: @product.name, note: @product.note, price: @product.price, priceold: @product.priceold, supplier_id: @product.supplier_id, unittype: @product.unittype }
    assert_redirected_to product_path(assigns(:product))
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete :destroy, id: @product
    end

    assert_redirected_to products_path
  end
end
