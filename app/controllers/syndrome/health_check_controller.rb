require_dependency "syndrome/application_controller"

module Syndrome
  class HealthCheckController < ApplicationController
    def status
      retval = {
         "ok" => true
      }
      render json: retval
    end
    def ok
      render json: { "ok" => true }
    end
  end
end
