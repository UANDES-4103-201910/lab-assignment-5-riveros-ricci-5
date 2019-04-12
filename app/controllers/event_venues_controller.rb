class EventVenuesController < ApplicationController
  def create
    @ev = EventVenue.new(params)
    if @ev.save
      render json: @ev
    end
  end

  def update
    # TODO
  end

  def destroy
    @ev = EventVenue.find(params[:id])
    if @ev.destroy
      render json: "Deleted"
    end
  end
end
