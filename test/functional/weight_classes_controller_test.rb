require 'test_helper'

class WeightClassesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:weight_classes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create weight_class" do
    assert_difference('WeightClass.count') do
      post :create, :weight_class => { }
    end

    assert_redirected_to weight_class_path(assigns(:weight_class))
  end

  test "should show weight_class" do
    get :show, :id => weight_classes(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => weight_classes(:one).to_param
    assert_response :success
  end

  test "should update weight_class" do
    put :update, :id => weight_classes(:one).to_param, :weight_class => { }
    assert_redirected_to weight_class_path(assigns(:weight_class))
  end

  test "should destroy weight_class" do
    assert_difference('WeightClass.count', -1) do
      delete :destroy, :id => weight_classes(:one).to_param
    end

    assert_redirected_to weight_classes_path
  end
end
