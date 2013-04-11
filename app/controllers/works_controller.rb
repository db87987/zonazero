class WorksController < ApplicationController
  def index
    @works = Work.order("sn ASC")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @works }
    end
  end

  def show
    @message = Message.new
    @work = Work.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @work }
    end
  end
  
  def home
    @message = Message.new
    
    @front_works = Work.where(:front_show => true)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @works }
    end
  end
end

