require 'test_helper'

class PhraseControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get phrase_index_url
    assert_response :success
  end

  test "should get new" do
    get phrase_new_url
    assert_response :success
  end

  test "should get create" do
    get phrase_create_url
    assert_response :success
  end

end
