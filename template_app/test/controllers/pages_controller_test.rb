require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get song" do
    get pages_song_url
    assert_response :success
  end

  test "should get artist" do
    get pages_artist_url
    assert_response :success
  end

  test "should get album" do
    get pages_album_url
    assert_response :success
  end

end
