require 'test_helper'

class UTimesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @u_time = u_times(:one)
  end

  test "should get index" do
    get u_times_url
    assert_response :success
  end

  test "should get new" do
    get new_u_time_url
    assert_response :success
  end

  test "should create u_time" do
    assert_difference('UTime.count') do
      post u_times_url, params: { u_time: { hours: @u_time.hours, mins: @u_time.mins } }
    end

    assert_redirected_to u_time_url(UTime.last)
  end

  test "should show u_time" do
    get u_time_url(@u_time)
    assert_response :success
  end

  test "should get edit" do
    get edit_u_time_url(@u_time)
    assert_response :success
  end

  test "should update u_time" do
    patch u_time_url(@u_time), params: { u_time: { hours: @u_time.hours, mins: @u_time.mins } }
    assert_redirected_to u_time_url(@u_time)
  end

  test "should destroy u_time" do
    assert_difference('UTime.count', -1) do
      delete u_time_url(@u_time)
    end

    assert_redirected_to u_times_url
  end
end
