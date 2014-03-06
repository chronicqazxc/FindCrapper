require 'test_helper'

class CrappersControllerTest < ActionController::TestCase
  setup do
    @crapper = crappers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:crappers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create crapper" do
    assert_difference('Crapper.count') do
      post :create, crapper: { address: @crapper.address, city: @crapper.city, district: @crapper.district, name: @crapper.name }
    end

    assert_redirected_to crapper_path(assigns(:crapper))
  end

  test "should show crapper" do
    get :show, id: @crapper
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @crapper
    assert_response :success
  end

  test "should update crapper" do
    patch :update, id: @crapper, crapper: { address: @crapper.address, city: @crapper.city, district: @crapper.district, name: @crapper.name }
    assert_redirected_to crapper_path(assigns(:crapper))
  end

  test "should destroy crapper" do
    assert_difference('Crapper.count', -1) do
      delete :destroy, id: @crapper
    end

    assert_redirected_to crappers_path
  end
end
