require "application_system_test_case"

class ProfessorsTest < ApplicationSystemTestCase
  setup do
    @professor = professors(:one)
  end

  test "visiting the index" do
    visit professors_url
    assert_selector "h1", text: "Professors"
  end

  test "creating a Professor" do
    visit professors_url
    click_on "New Professor"

    fill_in "Graduacao", with: @professor.graduacao
    fill_in "Matricula", with: @professor.matricula
    fill_in "Nome", with: @professor.nome
    click_on "Create Professor"

    assert_text "Professor was successfully created"
    click_on "Back"
  end

  test "updating a Professor" do
    visit professors_url
    click_on "Edit", match: :first

    fill_in "Graduacao", with: @professor.graduacao
    fill_in "Matricula", with: @professor.matricula
    fill_in "Nome", with: @professor.nome
    click_on "Update Professor"

    assert_text "Professor was successfully updated"
    click_on "Back"
  end

  test "destroying a Professor" do
    visit professors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Professor was successfully destroyed"
  end
end
