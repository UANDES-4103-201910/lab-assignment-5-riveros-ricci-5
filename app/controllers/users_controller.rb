class UsersController < ApplicationController
  def create
    # TODO
  end

  def update
    # TODO
  end

  def destroy
    # TODO
  end

  def user_with_most_tickets
    users_tickets_bought = Order.group(:user_id).count
    big = users_tickets_bought.max_by{|k,v| v}[0]
    render json: User.find(big)['name'] + ' ' + User.find(big)['lastname']
  end

end
