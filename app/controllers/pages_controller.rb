class PagesController < ApplicationController
  def index
    @pages = Page.all
    @page = Page.first
    @message = Message.new
  end

  def show
    @message = Message.new
    @pages = Page.all
    @page = Page.find(params[:id])
  end
end
