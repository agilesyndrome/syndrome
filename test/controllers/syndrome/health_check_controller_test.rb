require 'test_helper'

module Syndrome
  class HealthCheckControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    test "should get ok" do
      get health_check_ok_url
      assert_response :success
    end

  end
end
