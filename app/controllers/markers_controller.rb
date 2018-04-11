class MarkersController < ApplicationController
  def index
    @markers = Marker.all.order(created_at: :desc)
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
