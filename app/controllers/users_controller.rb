class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token
  def show
    @user = User.find(params[:id])
    render json: @user
  end

  def new
    @user = User.new
  end

  def create 
    @user = User.new(params[:user])
    if @user.save
      render json: @user
    else
      render json: @user.errors
    end
  end

  def update
    @user = User.find(params[:id])
    if @user.update(params)
        render json: @user
    end

  end

  def destroy
    @user = User.find(params[:id])
    if @user.destroy
      render json: "Deleted"
    end

  end

  def user_with_most_tickets
    users_tickets_bought = Order.group(:user_id).count
    big = users_tickets_bought.max_by{|k,v| v}[0]
    render json: User.find(big)['name'] + ' ' + User.find(big)['lastname']
  end

end
