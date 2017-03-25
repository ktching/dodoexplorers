require 'test_helper'

class JustfortestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @justfortest = justfortests(:one)
  end

  test "should get index" do
    get justfortests_url
    assert_response :success
  end

  test "should get new" do
    get new_justfortest_url
    assert_response :success
  end

  test "should create justfortest" do
    assert_difference('Justfortest.count') do
      post justfortests_url, params: { justfortest: {  } }
    end

    assert_redirected_to justfortest_url(Justfortest.last)
  end

  test "should show justfortest" do
    get justfortest_url(@justfortest)
    assert_response :success
  end

  test "should get edit" do
    get edit_justfortest_url(@justfortest)
    assert_response :success
  end

  test "should update justfortest" do
    patch justfortest_url(@justfortest), params: { justfortest: {  } }
    assert_redirected_to justfortest_url(@justfortest)
  end

  test "should destroy justfortest" do
    assert_difference('Justfortest.count', -1) do
      delete justfortest_url(@justfortest)
    end

    assert_redirected_to justfortests_url
  end
end
