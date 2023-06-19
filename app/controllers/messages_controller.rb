class MessagesController < ApplicationController
  def index
    @messages = Message.all
  end

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)

    if @message.save
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    @message = Message.find(params[:id])  
     
     @message.destroy
     
     respond_to do |format|
       format.html { redirect_to admin_home_index_path, notice: "Message was successfully deleted." }
       format.json { head :no_content }
     end
  end

  private

  def set_message
    @message = Message.find(params[:id])
  end

  def message_params
    params.require(:message).permit(:name, :contact, :body)
  end
end