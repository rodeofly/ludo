require 'test_helper'

class ExerciceDynamiquesControllerTest < ActionController::TestCase
  setup do
    @exercice_dynamique = exercice_dynamiques(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:exercice_dynamiques)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create exercice_dynamique" do
    assert_difference('ExerciceDynamique.count') do
      post :create, exercice_dynamique: @exercice_dynamique.attributes
    end

    assert_redirected_to exercice_dynamique_path(assigns(:exercice_dynamique))
  end

  test "should show exercice_dynamique" do
    get :show, id: @exercice_dynamique
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @exercice_dynamique
    assert_response :success
  end

  test "should update exercice_dynamique" do
    put :update, id: @exercice_dynamique, exercice_dynamique: @exercice_dynamique.attributes
    assert_redirected_to exercice_dynamique_path(assigns(:exercice_dynamique))
  end

  test "should destroy exercice_dynamique" do
    assert_difference('ExerciceDynamique.count', -1) do
      delete :destroy, id: @exercice_dynamique
    end

    assert_redirected_to exercice_dynamiques_path
  end
end
