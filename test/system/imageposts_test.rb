require "application_system_test_case"

class ImagepostsTest < ApplicationSystemTestCase
  setup do
    @imagepost = imageposts(:one)
  end

  test "visiting the index" do
    visit imageposts_url
    assert_selector "h1", text: "Imageposts"
  end

  test "should create imagepost" do
    visit imageposts_url
    click_on "New imagepost"

    fill_in "Title", with: @imagepost.title
    click_on "Create Imagepost"

    assert_text "Imagepost was successfully created"
    click_on "Back"
  end

  test "should update Imagepost" do
    visit imagepost_url(@imagepost)
    click_on "Edit this imagepost", match: :first

    fill_in "Title", with: @imagepost.title
    click_on "Update Imagepost"

    assert_text "Imagepost was successfully updated"
    click_on "Back"
  end

  test "should destroy Imagepost" do
    visit imagepost_url(@imagepost)
    click_on "Destroy this imagepost", match: :first

    assert_text "Imagepost was successfully destroyed"
  end
end
