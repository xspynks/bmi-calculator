require "test_helper"

class CalcsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @calc = calcs(:one)
  end

  test "should get index" do
    get calcs_url
    assert_response :success
  end

  test "should get new" do
    get new_calc_url
    assert_response :success
  end

  test "should create calc" do
    assert_difference("Calc.count") do
      post calcs_url, params: { calc: { bmi: @calc.bmi, height: @calc.height, weight: @calc.weight } }
    end

    assert_redirected_to calc_url(Calc.last)
  end

  test "should show calc" do
    get calc_url(@calc)
    assert_response :success
  end

  test "should get edit" do
    get edit_calc_url(@calc)
    assert_response :success
  end

  test "should update calc" do
    patch calc_url(@calc), params: { calc: { bmi: @calc.bmi, height: @calc.height, weight: @calc.weight } }
    assert_redirected_to calc_url(@calc)
  end

  test "should destroy calc" do
    assert_difference("Calc.count", -1) do
      delete calc_url(@calc)
    end

    assert_redirected_to calcs_url
  end
end
