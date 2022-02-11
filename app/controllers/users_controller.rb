# frozen_string_literal: true

class UsersController < AuthorizationsController
  def index
    @users = User.all
  end

  def show
    @user = User.find_by(id: params[:id])
  end
end
