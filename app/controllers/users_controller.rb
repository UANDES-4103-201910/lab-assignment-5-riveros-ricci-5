class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token
  def show
    @user = User.find(params[:id])
    render json: @user
  end

  def create
    @user = User.new(params.fetch(:user, {}))
    render json: @user
  end

  def update
    # TODO
  end

  def destroy
    @user.destroy
    render js: "alert('Hello Rails');"
  end

  def user_with_most_tickets
    # TODO
  end
end
