require "application_system_test_case"

class BaintodoListsTest < ApplicationSystemTestCase
  setup do
    @baintodo_list = baintodo_lists(:one)
  end

  test "visiting the index" do
    visit baintodo_lists_url
    assert_selector "h1", text: "Baintodo Lists"
  end

  test "creating a Baintodo list" do
    visit baintodo_lists_url
    click_on "New Baintodo List"

    fill_in "Descrption", with: @baintodo_list.descrption
    fill_in "Title", with: @baintodo_list.title
    click_on "Create Baintodo list"

    assert_text "Baintodo list was successfully created"
    click_on "Back"
  end

  test "updating a Baintodo list" do
    visit baintodo_lists_url
    click_on "Edit", match: :first

    fill_in "Descrption", with: @baintodo_list.descrption
    fill_in "Title", with: @baintodo_list.title
    click_on "Update Baintodo list"

    assert_text "Baintodo list was successfully updated"
    click_on "Back"
  end

  test "destroying a Baintodo list" do
    visit baintodo_lists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Baintodo list was successfully destroyed"
  end
end
