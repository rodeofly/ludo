require 'test_helper'

class SujetStatiquesControllerTest < ActionController::TestCase
  setup do
    @sujet_statique = sujet_statiques(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sujet_statiques)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sujet_statique" do
    assert_difference('SujetStatique.count') do
      post :create, sujet_statique: @sujet_statique.attributes
    end

    assert_redirected_to sujet_statique_path(assigns(:sujet_statique))
  end

  test "should show sujet_statique" do
    get :show, id: @sujet_statique
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sujet_statique
    assert_response :success
  end

  test "should update sujet_statique" do
    put :update, id: @sujet_statique, sujet_statique: @sujet_statique.attributes
    assert_redirected_to sujet_statique_path(assigns(:sujet_statique))
  end

  test "should destroy sujet_statique" do
    assert_difference('SujetStatique.count', -1) do
      delete :destroy, id: @sujet_statique
    end

    assert_redirected_to sujet_statiques_path
  end
end
