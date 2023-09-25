require "test_helper"

class RazasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @raza = razas(:one)
  end

  test "should get index" do
    get razas_url
    assert_response :success
  end

  test "should get new" do
    get new_raza_url
    assert_response :success
  end

  test "should create raza" do
    assert_difference("Raza.count") do
      post razas_url, params: { raza: { description: @raza.description, nombre: @raza.nombre } }
    end

    assert_redirected_to raza_url(Raza.last)
  end

  test "should show raza" do
    get raza_url(@raza)
    assert_response :success
  end

  test "should get edit" do
    get edit_raza_url(@raza)
    assert_response :success
  end

  test "should update raza" do
    patch raza_url(@raza), params: { raza: { description: @raza.description, nombre: @raza.nombre } }
    assert_redirected_to raza_url(@raza)
  end

  test "should destroy raza" do
    assert_difference("Raza.count", -1) do
      delete raza_url(@raza)
    end

    assert_redirected_to razas_url
  end
end
