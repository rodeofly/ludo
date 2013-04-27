require 'test_helper'

class ExerciceStatiquesControllerTest < ActionController::TestCase
  setup do
    @exercice_statique = exercice_statiques(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:exercice_statiques)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create exercice_statique" do
    assert_difference('ExerciceStatique.count') do
      post :create, exercice_statique: @exercice_statique.attributes
    end

    assert_redirected_to exercice_statique_path(assigns(:exercice_statique))
  end

  test "should show exercice_statique" do
    get :show, id: @exercice_statique
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @exercice_statique
    assert_response :success
  end

  test "should update exercice_statique" do
    put :update, id: @exercice_statique, exercice_statique: @exercice_statique.attributes
    assert_redirected_to exercice_statique_path(assigns(:exercice_statique))
  end

  test "should destroy exercice_statique" do
    assert_difference('ExerciceStatique.count', -1) do
      delete :destroy, id: @exercice_statique
    end

    assert_redirected_to exercice_statiques_path
  end
end
