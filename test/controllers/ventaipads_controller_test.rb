require 'test_helper'

class VentaipadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ventaipad = ventaipads(:one)
  end

  test "should get index" do
    get ventaipads_url
    assert_response :success
  end

  test "should get new" do
    get new_ventaipad_url
    assert_response :success
  end

  test "should create ventaipad" do
    assert_difference('Ventaipad.count') do
      post ventaipads_url, params: { ventaipad: { cantidad: @ventaipad.cantidad, color: @ventaipad.color, memoria: @ventaipad.memoria, modelo: @ventaipad.modelo, precio: @ventaipad.precio } }
    end

    assert_redirected_to ventaipad_url(Ventaipad.last)
  end

  test "should show ventaipad" do
    get ventaipad_url(@ventaipad)
    assert_response :success
  end

  test "should get edit" do
    get edit_ventaipad_url(@ventaipad)
    assert_response :success
  end

  test "should update ventaipad" do
    patch ventaipad_url(@ventaipad), params: { ventaipad: { cantidad: @ventaipad.cantidad, color: @ventaipad.color, memoria: @ventaipad.memoria, modelo: @ventaipad.modelo, precio: @ventaipad.precio } }
    assert_redirected_to ventaipad_url(@ventaipad)
  end

  test "should destroy ventaipad" do
    assert_difference('Ventaipad.count', -1) do
      delete ventaipad_url(@ventaipad)
    end

    assert_redirected_to ventaipads_url
  end
end
