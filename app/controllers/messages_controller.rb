class MessagesController < ApplicationController
  def create
     @messages = Message.new(messages_params)
     @messages.save
  end
  
  private
    def messages_params
      params.require(:message).permit(:name, :content)
    end
end
