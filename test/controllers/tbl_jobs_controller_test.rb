require 'test_helper'

class TblJobsControllerTest < ActionController::TestCase
  setup do
    @tbl_job = tbl_jobs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tbl_jobs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tbl_job" do
    assert_difference('TblJob.count') do
      post :create, tbl_job: { html: @tbl_job.html, url: @tbl_job.url }
    end

    assert_redirected_to tbl_job_path(assigns(:tbl_job))
  end

  test "should show tbl_job" do
    get :show, id: @tbl_job
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tbl_job
    assert_response :success
  end

  test "should update tbl_job" do
    patch :update, id: @tbl_job, tbl_job: { html: @tbl_job.html, url: @tbl_job.url }
    assert_redirected_to tbl_job_path(assigns(:tbl_job))
  end

  test "should destroy tbl_job" do
    assert_difference('TblJob.count', -1) do
      delete :destroy, id: @tbl_job
    end

    assert_redirected_to tbl_jobs_path
  end
end
