require "application_system_test_case"

class AcornHashtagsTest < ApplicationSystemTestCase
  setup do
    @acorn_hashtag = acorn_hashtags(:one)
  end

  test "visiting the index" do
    visit acorn_hashtags_url
    assert_selector "h1", text: "Acorn hashtags"
  end

  test "should create acorn hashtag" do
    visit acorn_hashtags_url
    click_on "New acorn hashtag"

    fill_in "Acorn", with: @acorn_hashtag.acorn_id
    fill_in "Hastag", with: @acorn_hashtag.hastag_id
    click_on "Create Acorn hashtag"

    assert_text "Acorn hashtag was successfully created"
    click_on "Back"
  end

  test "should update Acorn hashtag" do
    visit acorn_hashtag_url(@acorn_hashtag)
    click_on "Edit this acorn hashtag", match: :first

    fill_in "Acorn", with: @acorn_hashtag.acorn_id
    fill_in "Hastag", with: @acorn_hashtag.hastag_id
    click_on "Update Acorn hashtag"

    assert_text "Acorn hashtag was successfully updated"
    click_on "Back"
  end

  test "should destroy Acorn hashtag" do
    visit acorn_hashtag_url(@acorn_hashtag)
    click_on "Destroy this acorn hashtag", match: :first

    assert_text "Acorn hashtag was successfully destroyed"
  end
end
