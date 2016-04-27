require 'test_helper'

class MovietablesControllerTest < ActionController::TestCase
  setup do
    @movietable = movietables(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:movietables)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create movietable" do
    assert_difference('Movietable.count') do
      post :create, movietable: { actor1: @movietable.actor1, actor2: @movietable.actor2, actor3: @movietable.actor3, id: @movietable.id, name: @movietable.name, year: @movietable.year }
    end

    assert_redirected_to movietable_path(assigns(:movietable))
  end

  test "should show movietable" do
    get :show, id: @movietable
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @movietable
    assert_response :success
  end

  test "should update movietable" do
    patch :update, id: @movietable, movietable: { actor1: @movietable.actor1, actor2: @movietable.actor2, actor3: @movietable.actor3, id: @movietable.id, name: @movietable.name, year: @movietable.year }
    assert_redirected_to movietable_path(assigns(:movietable))
  end

  test "should destroy movietable" do
    assert_difference('Movietable.count', -1) do
      delete :destroy, id: @movietable
    end

    assert_redirected_to movietables_path
  end
end
