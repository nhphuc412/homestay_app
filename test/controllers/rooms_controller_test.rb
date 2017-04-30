require 'test_helper'

class RoomsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @room = rooms(:one)
  end

  test "should get index" do
    get rooms_url
    assert_response :success
  end

  test "should get new" do
    get new_room_url
    assert_response :success
  end

  test "should create room" do
    assert_difference('Room.count') do
      post rooms_url, params: { room: { accommodates: @room.accommodates, bath_type_id: @room.bath_type_id, bed_type_id: @room.bed_type_id, description: @room.description, image: @room.image, price: @room.price, room_name: @room.room_name, room_type_id: @room.room_type_id } }
    end

    assert_redirected_to room_url(Room.last)
  end

  test "should show room" do
    get room_url(@room)
    assert_response :success
  end

  test "should get edit" do
    get edit_room_url(@room)
    assert_response :success
  end

  test "should update room" do
    patch room_url(@room), params: { room: { accommodates: @room.accommodates, bath_type_id: @room.bath_type_id, bed_type_id: @room.bed_type_id, description: @room.description, image: @room.image, price: @room.price, room_name: @room.room_name, room_type_id: @room.room_type_id } }
    assert_redirected_to room_url(@room)
  end

  test "should destroy room" do
    assert_difference('Room.count', -1) do
      delete room_url(@room)
    end

    assert_redirected_to rooms_url
  end
end
