class MessagesController < ApplicationController
  def new
    @message = Message.new
  end

  def create
    @message = Message.new(params.require(:message).permit(:name, :company, :phone, :email, :text))

    if @message.save
      redirect_to '/index'
    else
      render 'new'
    end
  end
end
