class FlightsController < ApplicationController
  def index 
    @flights = Flight.all
    @airport_options = Airport.all.map{ |a| [ a.code, a.id ] }
    @flight_dates = Flight.all.map{ |f| [ f.start.to_date, f.start.to_date ] }

    unless params.empty?
      @search_results = Flight.includes(:origin, :destination).where(:origin => post_params[:origin_id], :destination => post_params[:destination_id])
        .filter_map {|f| f if f.start.to_date == post_params[:start].to_date }  
      @num_passengers = post_params[:passengers]
    end
  end

  private 

  def post_params
    params.permit(:commit, :origin_id, :destination_id, :passengers, :start)
  end
end
