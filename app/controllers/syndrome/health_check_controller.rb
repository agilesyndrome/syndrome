require_dependency "syndrome/application_controller"

module Syndrome
  class HealthCheckController < ApplicationController
    def ok
      render json: { "ok" => true }
    end
  end
end
