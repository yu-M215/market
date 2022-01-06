class Public::UsersController < ApplicationController
  before_action :set_user

  def show
  end

  def edit
  end

  def update
    @user.save
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
