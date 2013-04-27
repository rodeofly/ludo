require 'test_helper'

class SujetsControllerTest < ActionController::TestCase
  setup do
    @sujet = sujets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sujets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sujet" do
    assert_difference('Sujet.count') do
      post :create, sujet: @sujet.attributes
    end

    assert_redirected_to sujet_path(assigns(:sujet))
  end

  test "should show sujet" do
    get :show, id: @sujet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sujet
    assert_response :success
  end

  test "should update sujet" do
    put :update, id: @sujet, sujet: @sujet.attributes
    assert_redirected_to sujet_path(assigns(:sujet))
  end

  test "should destroy sujet" do
    assert_difference('Sujet.count', -1) do
      delete :destroy, id: @sujet
    end

    assert_redirected_to sujets_path
  end
end
