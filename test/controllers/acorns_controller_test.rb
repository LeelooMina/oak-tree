require "test_helper"

class AcornsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @acorn = acorns(:one)
  end

  test "should get index" do
    get acorns_url
    assert_response :success
  end

  test "should get new" do
    get new_acorn_url
    assert_response :success
  end

  test "should create acorn" do
    assert_difference("Acorn.count") do
      post acorns_url, params: { acorn: { content: @acorn.content, date_created: @acorn.date_created, img: @acorn.img, link: @acorn.link, reply: @acorn.reply, user_id: @acorn.user_id } }
    end

    assert_redirected_to acorn_url(Acorn.last)
  end

  test "should show acorn" do
    get acorn_url(@acorn)
    assert_response :success
  end

  test "should get edit" do
    get edit_acorn_url(@acorn)
    assert_response :success
  end

  test "should update acorn" do
    patch acorn_url(@acorn), params: { acorn: { content: @acorn.content, date_created: @acorn.date_created, img: @acorn.img, link: @acorn.link, reply: @acorn.reply, user_id: @acorn.user_id } }
    assert_redirected_to acorn_url(@acorn)
  end

  test "should destroy acorn" do
    assert_difference("Acorn.count", -1) do
      delete acorn_url(@acorn)
    end

    assert_redirected_to acorns_url
  end
end
