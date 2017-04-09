require 'test_helper'

class EventGuestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @event_guest = event_guests(:one)
  end

  test "should get index" do
    get event_guests_url
    assert_response :success
  end

  test "should get new" do
    get new_event_guest_url
    assert_response :success
  end

  test "should create event_guest" do
    assert_difference('EventGuest.count') do
      post event_guests_url, params: { event_guest: { author: @event_guest.author, email: @event_guest.email, event_id: @event_guest.event_id, ip: @event_guest.ip } }
    end

    assert_redirected_to event_guest_url(EventGuest.last)
  end

  test "should show event_guest" do
    get event_guest_url(@event_guest)
    assert_response :success
  end

  test "should get edit" do
    get edit_event_guest_url(@event_guest)
    assert_response :success
  end

  test "should update event_guest" do
    patch event_guest_url(@event_guest), params: { event_guest: { author: @event_guest.author, email: @event_guest.email, event_id: @event_guest.event_id, ip: @event_guest.ip } }
    assert_redirected_to event_guest_url(@event_guest)
  end

  test "should destroy event_guest" do
    assert_difference('EventGuest.count', -1) do
      delete event_guest_url(@event_guest)
    end

    assert_redirected_to event_guests_url
  end
end
