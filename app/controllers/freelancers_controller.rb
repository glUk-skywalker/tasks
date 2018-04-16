class FreelancersController < ApplicationController
  layout "freelancer"

  def new
    @freelancer = Freelancer.new
  end

  def create
    @f = Freelancer.create(filtered_params)
    respond_to do |format|
      format.json { render json: @f }
    end
  end

  private
  def filtered_params
    params.permit(:name, :phone, :email, :message)
  end
end
