require "application_system_test_case"

class RazasTest < ApplicationSystemTestCase
  setup do
    @raza = razas(:one)
  end

  test "visiting the index" do
    visit razas_url
    assert_selector "h1", text: "Razas"
  end

  test "should create raza" do
    visit razas_url
    click_on "New raza"

    fill_in "Description", with: @raza.description
    fill_in "Nombre", with: @raza.nombre
    click_on "Create Raza"

    assert_text "Raza was successfully created"
    click_on "Back"
  end

  test "should update Raza" do
    visit raza_url(@raza)
    click_on "Edit this raza", match: :first

    fill_in "Description", with: @raza.description
    fill_in "Nombre", with: @raza.nombre
    click_on "Update Raza"

    assert_text "Raza was successfully updated"
    click_on "Back"
  end

  test "should destroy Raza" do
    visit raza_url(@raza)
    click_on "Destroy this raza", match: :first

    assert_text "Raza was successfully destroyed"
  end
end
