class TicketsController < ApplicationController
  def index
    @tickets = Ticket.all
    render json: @tickets
  end
  def create
    # TODO
  end

  def update
    # TODO
  end

  def destroy
    # TODO
  end
end
