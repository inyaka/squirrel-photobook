require 'test_helper'

class Album2photosControllerTest < ActionController::TestCase
  setup do
    @album2photo = album2photos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:album2photos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create album2photo" do
    assert_difference('Album2photo.count') do
      post :create, album2photo: { album_id: @album2photo.album_id, published_at: @album2photo.published_at }
    end

    assert_redirected_to album2photo_path(assigns(:album2photo))
  end

  test "should show album2photo" do
    get :show, id: @album2photo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @album2photo
    assert_response :success
  end

  test "should update album2photo" do
    put :update, id: @album2photo, album2photo: { album_id: @album2photo.album_id, published_at: @album2photo.published_at }
    assert_redirected_to album2photo_path(assigns(:album2photo))
  end

  test "should destroy album2photo" do
    assert_difference('Album2photo.count', -1) do
      delete :destroy, id: @album2photo
    end

    assert_redirected_to album2photos_path
  end
end
