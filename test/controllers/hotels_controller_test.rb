require "test_helper"

class HotelsControllerTest < ActionDispatch::IntegrationTest
  test "should get Rooms" do
    get hotels_Rooms_url
    assert_response :success
  end

  test "should get Bookings" do
    get hotels_Bookings_url
    assert_response :success
  end
end
