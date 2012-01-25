require 'test_helper'

class FotosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fotos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create foto" do
    assert_difference('Foto.count') do
      post :create, :foto => { }
    end

    assert_redirected_to foto_path(assigns(:foto))
  end

  test "should show foto" do
    get :show, :id => fotos(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => fotos(:one).to_param
    assert_response :success
  end

  test "should update foto" do
    put :update, :id => fotos(:one).to_param, :foto => { }
    assert_redirected_to foto_path(assigns(:foto))
  end

  test "should destroy foto" do
    assert_difference('Foto.count', -1) do
      delete :destroy, :id => fotos(:one).to_param
    end

    assert_redirected_to fotos_path
  end
end
