class EventsController < ApplicationController
  def create
    # TODO
  end

  def update
    # TODO
  end

  def destroy
    # TODO
  end

  def upcoming_events
    render json: Event.where((:start_date.month-DateTime.now) <= 3).order(:start_date)
  end

end
