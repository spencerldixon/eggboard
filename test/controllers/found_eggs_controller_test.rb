require 'test_helper'

class FoundEggsControllerTest < ActionController::TestCase
  setup do
    @found_egg = found_eggs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:found_eggs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create found_egg" do
    assert_difference('FoundEgg.count') do
      post :create, found_egg: { name: @found_egg.name }
    end

    assert_redirected_to found_egg_path(assigns(:found_egg))
  end

  test "should show found_egg" do
    get :show, id: @found_egg
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @found_egg
    assert_response :success
  end

  test "should update found_egg" do
    patch :update, id: @found_egg, found_egg: { name: @found_egg.name }
    assert_redirected_to found_egg_path(assigns(:found_egg))
  end

  test "should destroy found_egg" do
    assert_difference('FoundEgg.count', -1) do
      delete :destroy, id: @found_egg
    end

    assert_redirected_to found_eggs_path
  end
end
