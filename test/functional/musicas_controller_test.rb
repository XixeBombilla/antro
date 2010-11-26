require 'test_helper'

class MusicasControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:musicas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create musica" do
    assert_difference('Musica.count') do
      post :create, :musica => { }
    end

    assert_redirected_to musica_path(assigns(:musica))
  end

  test "should show musica" do
    get :show, :id => musicas(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => musicas(:one).to_param
    assert_response :success
  end

  test "should update musica" do
    put :update, :id => musicas(:one).to_param, :musica => { }
    assert_redirected_to musica_path(assigns(:musica))
  end

  test "should destroy musica" do
    assert_difference('Musica.count', -1) do
      delete :destroy, :id => musicas(:one).to_param
    end

    assert_redirected_to musicas_path
  end
end
