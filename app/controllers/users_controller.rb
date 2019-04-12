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
    users_tickets_bought = Order.group(:user_id).count
    big = users_tickets_bought.max_by{|k,v| v}[0]
    render json: User.find(big)['name'] + ' ' + User.find(big)['lastname']
  end

end
