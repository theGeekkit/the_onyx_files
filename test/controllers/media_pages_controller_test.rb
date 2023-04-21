require "test_helper"

class MediaPagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @media_page = media_pages(:one)
  end

  test "should get index" do
    get media_pages_url, as: :json
    assert_response :success
  end

  test "should create media_page" do
    assert_difference("MediaPage.count") do
      post media_pages_url, params: { media_page: { title: @media_page.title } }, as: :json
    end

    assert_response :created
  end

  test "should show media_page" do
    get media_page_url(@media_page), as: :json
    assert_response :success
  end

  test "should update media_page" do
    patch media_page_url(@media_page), params: { media_page: { title: @media_page.title } }, as: :json
    assert_response :success
  end

  test "should destroy media_page" do
    assert_difference("MediaPage.count", -1) do
      delete media_page_url(@media_page), as: :json
    end

    assert_response :no_content
  end
end
