require_dependency "syndrome/application_controller"

module Syndrome
  class AccountController < ApplicationController
    before_action: authenticate_user!

    def authenticate_user!
      if user_signed_in?
         pp 'Hola user'
      else
         redirect_to '/common/login'
      end
    end   
 
    def show
    end
  end
end
