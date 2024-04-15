require "test_helper"

class UpdateFeaturesFromApiJobTest < ActiveJob::TestCase
  test "should not save article without title" do
    assert_enqueued_jobs 0
    UpdateFeaturesFromApiJobTest.perform_later
    assert_enqueued_jobs 1
    UpdateFeaturesFromApiJobTest.perform_later
    assert_enqueued_jobs 2
  end
end
