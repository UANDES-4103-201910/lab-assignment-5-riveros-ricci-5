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
    render json: Event.where('start_date >= :currD AND start_date <= :end_date',
      {currD: DateTime.now + 3.months, end_date: DateTime.now} ).order(:start_date)
  end

end

