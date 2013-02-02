class ClientsController < ApplicationController
  # GET /clients
  # GET /clients.json
  def index
    @message = Message.new
    @clients = Client.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @clients }
    end
  end
end
