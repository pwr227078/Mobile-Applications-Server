require 'test_helper'

class PetrolStationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @petrol_station = petrol_stations(:one)
  end

  test "should get index" do
    get petrol_stations_url
    assert_response :success
  end

  test "should get new" do
    get new_petrol_station_url
    assert_response :success
  end

  test "should create petrol_station" do
    assert_difference('PetrolStation.count') do
      post petrol_stations_url, params: { petrol_station: { city: @petrol_station.city, gas_price: @petrol_station.gas_price, likes: @petrol_station.likes, name: @petrol_station.name, on_price: @petrol_station.on_price, pb95_price: @petrol_station.pb95_price, pb98_price: @petrol_station.pb98_price, postal_code: @petrol_station.postal_code, street: @petrol_station.street, unlikes: @petrol_station.unlikes } }
    end

    assert_redirected_to petrol_station_url(PetrolStation.last)
  end

  test "should show petrol_station" do
    get petrol_station_url(@petrol_station)
    assert_response :success
  end

  test "should get edit" do
    get edit_petrol_station_url(@petrol_station)
    assert_response :success
  end

  test "should update petrol_station" do
    patch petrol_station_url(@petrol_station), params: { petrol_station: { city: @petrol_station.city, gas_price: @petrol_station.gas_price, likes: @petrol_station.likes, name: @petrol_station.name, on_price: @petrol_station.on_price, pb95_price: @petrol_station.pb95_price, pb98_price: @petrol_station.pb98_price, postal_code: @petrol_station.postal_code, street: @petrol_station.street, unlikes: @petrol_station.unlikes } }
    assert_redirected_to petrol_station_url(@petrol_station)
  end

  test "should destroy petrol_station" do
    assert_difference('PetrolStation.count', -1) do
      delete petrol_station_url(@petrol_station)
    end

    assert_redirected_to petrol_stations_url
  end
end
