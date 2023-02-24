require "test_helper"

class AcornHashtagsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @acorn_hashtag = acorn_hashtags(:one)
  end

  test "should get index" do
    get acorn_hashtags_url
    assert_response :success
  end

  test "should get new" do
    get new_acorn_hashtag_url
    assert_response :success
  end

  test "should create acorn_hashtag" do
    assert_difference("AcornHashtag.count") do
      post acorn_hashtags_url, params: { acorn_hashtag: { acorn_id: @acorn_hashtag.acorn_id, hastag_id: @acorn_hashtag.hastag_id } }
    end

    assert_redirected_to acorn_hashtag_url(AcornHashtag.last)
  end

  test "should show acorn_hashtag" do
    get acorn_hashtag_url(@acorn_hashtag)
    assert_response :success
  end

  test "should get edit" do
    get edit_acorn_hashtag_url(@acorn_hashtag)
    assert_response :success
  end

  test "should update acorn_hashtag" do
    patch acorn_hashtag_url(@acorn_hashtag), params: { acorn_hashtag: { acorn_id: @acorn_hashtag.acorn_id, hastag_id: @acorn_hashtag.hastag_id } }
    assert_redirected_to acorn_hashtag_url(@acorn_hashtag)
  end

  test "should destroy acorn_hashtag" do
    assert_difference("AcornHashtag.count", -1) do
      delete acorn_hashtag_url(@acorn_hashtag)
    end

    assert_redirected_to acorn_hashtags_url
  end
end
