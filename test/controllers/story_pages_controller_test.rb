require "test_helper"

class StoryPagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @story_page = story_pages(:one)
  end

  test "should get index" do
    get story_pages_url, as: :json
    assert_response :success
  end

  test "should create story_page" do
    assert_difference("StoryPage.count") do
      post story_pages_url, params: { story_page: { body: @story_page.body, title: @story_page.title } }, as: :json
    end

    assert_response :created
  end

  test "should show story_page" do
    get story_page_url(@story_page), as: :json
    assert_response :success
  end

  test "should update story_page" do
    patch story_page_url(@story_page), params: { story_page: { body: @story_page.body, title: @story_page.title } }, as: :json
    assert_response :success
  end

  test "should destroy story_page" do
    assert_difference("StoryPage.count", -1) do
      delete story_page_url(@story_page), as: :json
    end

    assert_response :no_content
  end
end
