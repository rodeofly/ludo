require 'test_helper'

class DynamiquesControllerTest < ActionController::TestCase
  setup do
    @dynamique = dynamiques(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dynamiques)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dynamique" do
    assert_difference('Dynamique.count') do
      post :create, dynamique: @dynamique.attributes
    end

    assert_redirected_to dynamique_path(assigns(:dynamique))
  end

  test "should show dynamique" do
    get :show, id: @dynamique
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dynamique
    assert_response :success
  end

  test "should update dynamique" do
    put :update, id: @dynamique, dynamique: @dynamique.attributes
    assert_redirected_to dynamique_path(assigns(:dynamique))
  end

  test "should destroy dynamique" do
    assert_difference('Dynamique.count', -1) do
      delete :destroy, id: @dynamique
    end

    assert_redirected_to dynamiques_path
  end
end
