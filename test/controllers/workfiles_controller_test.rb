require 'test_helper'

class WorkfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @workfile = workfiles(:one)
  end

  test "should get index" do
    get workfiles_url
    assert_response :success
  end

  test "should get new" do
    get new_workfile_url
    assert_response :success
  end

  test "should create workfile" do
    assert_difference('Workfile.count') do
      post workfiles_url, params: { workfile: { date: @workfile.date, description: @workfile.description, title: @workfile.title, user_id: @workfile.user_id } }
    end

    assert_redirected_to workfile_url(Workfile.last)
  end

  test "should show workfile" do
    get workfile_url(@workfile)
    assert_response :success
  end

  test "should get edit" do
    get edit_workfile_url(@workfile)
    assert_response :success
  end

  test "should update workfile" do
    patch workfile_url(@workfile), params: { workfile: { date: @workfile.date, description: @workfile.description, title: @workfile.title, user_id: @workfile.user_id } }
    assert_redirected_to workfile_url(@workfile)
  end

  test "should destroy workfile" do
    assert_difference('Workfile.count', -1) do
      delete workfile_url(@workfile)
    end

    assert_redirected_to workfiles_url
  end
end
