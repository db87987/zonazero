class StaticPagesController < ApplicationController
  def about
    @message = Message.new
  end

  def kit
    @message = Message.new
  end

  def contact
    @message = Message.new
  end
end
