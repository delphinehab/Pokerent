class MessagesController < ApplicationController

  skip_after_action :verify_authorized

  def create 
    @message = Message.new(message_params)
    @conversation = Conversation.find(params[:message][:conversation_id])
    @message.conversation = @conversation
    @message.user_id = current_user.id
    @message.save
    redirect_to booking_path(@conversation.booking)
  end 

  private

  def message_params
    params.require(:message).permit(:content)
  end

end
