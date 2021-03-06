class MessagesController < ApplicationController
  def create
    @messages = Message.new(messages_params)
    if @messages.save
    else
      redirect_to "/chat"
    end
  end
  
  private
    def messages_params
      params.require(:message).permit(:user_id, :content)
    end
end
