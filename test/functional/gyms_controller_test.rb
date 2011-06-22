require 'test_helper'

class GymsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gyms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gym" do
    assert_difference('Gym.count') do
      post :create, :gym => { }
    end

    assert_redirected_to gym_path(assigns(:gym))
  end

  test "should show gym" do
    get :show, :id => gyms(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => gyms(:one).to_param
    assert_response :success
  end

  test "should update gym" do
    put :update, :id => gyms(:one).to_param, :gym => { }
    assert_redirected_to gym_path(assigns(:gym))
  end

  test "should destroy gym" do
    assert_difference('Gym.count', -1) do
      delete :destroy, :id => gyms(:one).to_param
    end

    assert_redirected_to gyms_path
  end
end
