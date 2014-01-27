require 'test_helper'

class PlaceInfosControllerTest < ActionController::TestCase
  setup do
    @place_info = place_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:place_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create place_info" do
    assert_difference('PlaceInfo.count') do
      post :create, place_info: { place_holiday_end1: @place_info.place_holiday_end1, place_holiday_end2: @place_info.place_holiday_end2, place_holiday_end3: @place_info.place_holiday_end3, place_holiday_start1: @place_info.place_holiday_start1, place_holiday_start2: @place_info.place_holiday_start2, place_holiday_start3: @place_info.place_holiday_start3, place_info: @place_info.place_info, place_kind: @place_info.place_kind, place_name: @place_info.place_name, place_no: @place_info.place_no, place_weekend_end1: @place_info.place_weekend_end1, place_weekend_end2: @place_info.place_weekend_end2, place_weekend_end3: @place_info.place_weekend_end3, place_weekend_start1: @place_info.place_weekend_start1, place_weekend_start2: @place_info.place_weekend_start2, place_weekend_start3: @place_info.place_weekend_start3, place_workday_end1: @place_info.place_workday_end1, place_workday_end2: @place_info.place_workday_end2, place_workday_end3: @place_info.place_workday_end3, place_workday_start1: @place_info.place_workday_start1, place_workday_start2: @place_info.place_workday_start2, place_workday_start3: @place_info.place_workday_start3 }
    end

    assert_redirected_to place_info_path(assigns(:place_info))
  end

  test "should show place_info" do
    get :show, id: @place_info
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @place_info
    assert_response :success
  end

  test "should update place_info" do
    patch :update, id: @place_info, place_info: { place_holiday_end1: @place_info.place_holiday_end1, place_holiday_end2: @place_info.place_holiday_end2, place_holiday_end3: @place_info.place_holiday_end3, place_holiday_start1: @place_info.place_holiday_start1, place_holiday_start2: @place_info.place_holiday_start2, place_holiday_start3: @place_info.place_holiday_start3, place_info: @place_info.place_info, place_kind: @place_info.place_kind, place_name: @place_info.place_name, place_no: @place_info.place_no, place_weekend_end1: @place_info.place_weekend_end1, place_weekend_end2: @place_info.place_weekend_end2, place_weekend_end3: @place_info.place_weekend_end3, place_weekend_start1: @place_info.place_weekend_start1, place_weekend_start2: @place_info.place_weekend_start2, place_weekend_start3: @place_info.place_weekend_start3, place_workday_end1: @place_info.place_workday_end1, place_workday_end2: @place_info.place_workday_end2, place_workday_end3: @place_info.place_workday_end3, place_workday_start1: @place_info.place_workday_start1, place_workday_start2: @place_info.place_workday_start2, place_workday_start3: @place_info.place_workday_start3 }
    assert_redirected_to place_info_path(assigns(:place_info))
  end

  test "should destroy place_info" do
    assert_difference('PlaceInfo.count', -1) do
      delete :destroy, id: @place_info
    end

    assert_redirected_to place_infos_path
  end
end
