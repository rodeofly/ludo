require 'test_helper'

class ExerciceSujetStatiquesControllerTest < ActionController::TestCase
  setup do
    @exercice_sujet_statique = exercice_sujet_statiques(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:exercice_sujet_statiques)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create exercice_sujet_statique" do
    assert_difference('ExerciceSujetStatique.count') do
      post :create, exercice_sujet_statique: @exercice_sujet_statique.attributes
    end

    assert_redirected_to exercice_sujet_statique_path(assigns(:exercice_sujet_statique))
  end

  test "should show exercice_sujet_statique" do
    get :show, id: @exercice_sujet_statique
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @exercice_sujet_statique
    assert_response :success
  end

  test "should update exercice_sujet_statique" do
    put :update, id: @exercice_sujet_statique, exercice_sujet_statique: @exercice_sujet_statique.attributes
    assert_redirected_to exercice_sujet_statique_path(assigns(:exercice_sujet_statique))
  end

  test "should destroy exercice_sujet_statique" do
    assert_difference('ExerciceSujetStatique.count', -1) do
      delete :destroy, id: @exercice_sujet_statique
    end

    assert_redirected_to exercice_sujet_statiques_path
  end
end
