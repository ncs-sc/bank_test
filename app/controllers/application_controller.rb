# frozen_string_literal: true

# Base class controller
class ApplicationController < ActionController::Base
  before_action :authenticate_user!
end
