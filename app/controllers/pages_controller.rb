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
  
  def mercury_update
    page = Page.find(params[:id])
    page.title = params[:content][:page_title][:value]
    page.description = params[:content][:page_description][:value]
    page.save!
    render text: ""
  end
end
