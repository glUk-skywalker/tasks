class MarkersController < ApplicationController
  def index
    @markers = if params[:markers]
      params[:markers].map{ |m| Marker.new(lat: m[:lat], lng: m[:lng]) }
    else
      Marker.all.order(created_at: :desc)
    end
  end

  def create
    Marker.create(lat: allowed_params[:lat], lng: allowed_params[:lng])
    redirect_to request.referer
  end

  private

  def allowed_params
    params.require(:marker).permit(:lat, :lng)
  end
end
