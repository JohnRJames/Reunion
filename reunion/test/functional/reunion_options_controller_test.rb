require 'test_helper'

class ReunionOptionsControllerTest < ActionController::TestCase
  setup do
    @reunion_option = reunion_options(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reunion_options)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reunion_option" do
    assert_difference('ReunionOption.count') do
      post :create, :reunion_option => @reunion_option.attributes
    end

    assert_redirected_to reunion_option_path(assigns(:reunion_option))
  end

  test "should show reunion_option" do
    get :show, :id => @reunion_option.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @reunion_option.to_param
    assert_response :success
  end

  test "should update reunion_option" do
    put :update, :id => @reunion_option.to_param, :reunion_option => @reunion_option.attributes
    assert_redirected_to reunion_option_path(assigns(:reunion_option))
  end

  test "should destroy reunion_option" do
    assert_difference('ReunionOption.count', -1) do
      delete :destroy, :id => @reunion_option.to_param
    end

    assert_redirected_to reunion_options_path
  end
end
