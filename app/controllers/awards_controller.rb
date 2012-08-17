class AwardsController < ApplicationController
  # GET /awards
  # GET /awards.json
  def index
    @awards = Award.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @awards }
    end
  end
end
