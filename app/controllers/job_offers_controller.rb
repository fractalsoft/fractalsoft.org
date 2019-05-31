class JobOffersController < ApplicationController
  # GET /jobs
  def index
    @job_offers = JobOffer.published.sorted
  end

  # GET /jobs/slug
  def show
    @job_offer = JobOffer.find(params[:id])
  end
end
