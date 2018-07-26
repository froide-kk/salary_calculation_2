require 'test_helper'

class MasterJobsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @master_job = master_jobs(:one)
  end

  test "should get index" do
    get master_jobs_url
    assert_response :success
  end

  test "should get new" do
    get new_master_job_url
    assert_response :success
  end

  test "should create master_job" do
    assert_difference('MasterJob.count') do
      post master_jobs_url, params: { master_job: { allowance: @master_job.allowance, index: @master_job.index, name: @master_job.name } }
    end

    assert_redirected_to master_job_url(MasterJob.last)
  end

  test "should show master_job" do
    get master_job_url(@master_job)
    assert_response :success
  end

  test "should get edit" do
    get edit_master_job_url(@master_job)
    assert_response :success
  end

  test "should update master_job" do
    patch master_job_url(@master_job), params: { master_job: { allowance: @master_job.allowance, index: @master_job.index, name: @master_job.name } }
    assert_redirected_to master_job_url(@master_job)
  end

  test "should destroy master_job" do
    assert_difference('MasterJob.count', -1) do
      delete master_job_url(@master_job)
    end

    assert_redirected_to master_jobs_url
  end
end
