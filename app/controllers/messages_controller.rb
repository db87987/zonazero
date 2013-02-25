class MessagesController < InheritedResources::Base
   def index
      @messages = Message.where(:check => true).all
    end

    def show
      @message = Message.find(params[:id])
    end

    def new
      @message = Message.new
    end

    def edit
      @message = Message.find(params[:id])
    end

    def create
      @message = Message.new(params[:message])
       if @message.save
          RequestMailer.new_message(@message).deliver
          redirect_to(:back)
        else
          render :new
        end

    end

    # PUT /messages/1
    # PUT /messages/1.json
    def update
      @message = Message.find(params[:id])

      respond_to do |format|
        if @message.update_attributes(params[:message])
          format.html { redirect_to @message }
          format.json { head :no_content }
          flash[:notice] = t('message_updated')
        else
          format.html { render action: "edit" }
          format.json { render json: @message.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /messages/1
    # DELETE /messages/1.json
    def destroy
      @message = Message.find(params[:id])
      @message.destroy

      respond_to do |format|
        format.html { redirect_to messages_url }
        format.json { head :no_content }
      end
    end
  end
