require "application_system_test_case"

class AcornsTest < ApplicationSystemTestCase
  setup do
    @acorn = acorns(:one)
  end

  test "visiting the index" do
    visit acorns_url
    assert_selector "h1", text: "Acorns"
  end

  test "should create acorn" do
    visit acorns_url
    click_on "New acorn"

    fill_in "Content", with: @acorn.content
    fill_in "Date created", with: @acorn.date_created
    fill_in "Img", with: @acorn.img
    fill_in "Link", with: @acorn.link
    check "Reply" if @acorn.reply
    fill_in "User", with: @acorn.user_id
    click_on "Create Acorn"

    assert_text "Acorn was successfully created"
    click_on "Back"
  end

  test "should update Acorn" do
    visit acorn_url(@acorn)
    click_on "Edit this acorn", match: :first

    fill_in "Content", with: @acorn.content
    fill_in "Date created", with: @acorn.date_created
    fill_in "Img", with: @acorn.img
    fill_in "Link", with: @acorn.link
    check "Reply" if @acorn.reply
    fill_in "User", with: @acorn.user_id
    click_on "Update Acorn"

    assert_text "Acorn was successfully updated"
    click_on "Back"
  end

  test "should destroy Acorn" do
    visit acorn_url(@acorn)
    click_on "Destroy this acorn", match: :first

    assert_text "Acorn was successfully destroyed"
  end
end
