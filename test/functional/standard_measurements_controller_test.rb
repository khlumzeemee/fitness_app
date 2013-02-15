require 'test_helper'

class StandardMeasurementsControllerTest < ActionController::TestCase
  setup do
    @standard_measurement = standard_measurements(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:standard_measurements)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create standard_measurement" do
    assert_difference('StandardMeasurement.count') do
      post :create, standard_measurement: { body_fat_percentage: @standard_measurement.body_fat_percentage, creation_date: @standard_measurement.creation_date, muscle_mass: @standard_measurement.muscle_mass, waist_line: @standard_measurement.waist_line, water_percentage: @standard_measurement.water_percentage, weight: @standard_measurement.weight }
    end

    assert_redirected_to standard_measurement_path(assigns(:standard_measurement))
  end

  test "should show standard_measurement" do
    get :show, id: @standard_measurement
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @standard_measurement
    assert_response :success
  end

  test "should update standard_measurement" do
    put :update, id: @standard_measurement, standard_measurement: { body_fat_percentage: @standard_measurement.body_fat_percentage, creation_date: @standard_measurement.creation_date, muscle_mass: @standard_measurement.muscle_mass, waist_line: @standard_measurement.waist_line, water_percentage: @standard_measurement.water_percentage, weight: @standard_measurement.weight }
    assert_redirected_to standard_measurement_path(assigns(:standard_measurement))
  end

  test "should destroy standard_measurement" do
    assert_difference('StandardMeasurement.count', -1) do
      delete :destroy, id: @standard_measurement
    end

    assert_redirected_to standard_measurements_path
  end
end
