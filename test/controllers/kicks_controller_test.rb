require "test_helper"

class KicksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kick = kicks(:one)
  end

  test "should get index" do
    get kicks_url
    assert_response :success
  end

  test "should get new" do
    get new_kick_url
    assert_response :success
  end

  test "should create kick" do
    assert_difference('Kick.count') do
      post kicks_url, params: { kick: { brand: @kick.brand, size: @kick.size, style: @kick.style } }
    end

    assert_redirected_to kick_url(Kick.last)
  end

  test "should show kick" do
    get kick_url(@kick)
    assert_response :success
  end

  test "should get edit" do
    get edit_kick_url(@kick)
    assert_response :success
  end

  test "should update kick" do
    patch kick_url(@kick), params: { kick: { brand: @kick.brand, size: @kick.size, style: @kick.style } }
    assert_redirected_to kick_url(@kick)
  end

  test "should destroy kick" do
    assert_difference('Kick.count', -1) do
      delete kick_url(@kick)
    end

    assert_redirected_to kicks_url
  end
end
