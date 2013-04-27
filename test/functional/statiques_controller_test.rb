require 'test_helper'

class StatiquesControllerTest < ActionController::TestCase
  setup do
    @statique = statiques(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:statiques)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create statique" do
    assert_difference('Statique.count') do
      post :create, statique: @statique.attributes
    end

    assert_redirected_to statique_path(assigns(:statique))
  end

  test "should show statique" do
    get :show, id: @statique
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @statique
    assert_response :success
  end

  test "should update statique" do
    put :update, id: @statique, statique: @statique.attributes
    assert_redirected_to statique_path(assigns(:statique))
  end

  test "should destroy statique" do
    assert_difference('Statique.count', -1) do
      delete :destroy, id: @statique
    end

    assert_redirected_to statiques_path
  end
end
