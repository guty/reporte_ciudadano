# frozen_string_literal: true

class AuthorizationsController < ApplicationController
  before_action :authenticate_user!
end
