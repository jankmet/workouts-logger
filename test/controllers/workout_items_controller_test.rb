require 'test_helper'

class WorkoutItemsControllerTest < ActionController::TestCase
  setup do
    @workout_item = workout_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:workout_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create workout_item" do
    assert_difference('WorkoutItem.count') do
      post :create, workout_item: { count: @workout_item.count, day: @workout_item.day, month: @workout_item.month, workout_id: @workout_item.workout_id, year: @workout_item.year }
    end

    assert_redirected_to workout_item_path(assigns(:workout_item))
  end

  test "should show workout_item" do
    get :show, id: @workout_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @workout_item
    assert_response :success
  end

  test "should update workout_item" do
    patch :update, id: @workout_item, workout_item: { count: @workout_item.count, day: @workout_item.day, month: @workout_item.month, workout_id: @workout_item.workout_id, year: @workout_item.year }
    assert_redirected_to workout_item_path(assigns(:workout_item))
  end

  test "should destroy workout_item" do
    assert_difference('WorkoutItem.count', -1) do
      delete :destroy, id: @workout_item
    end

    assert_redirected_to workout_items_path
  end
end
