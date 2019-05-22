class MessagesController < ApplicationController

  def index
  end
  def new
    @messages = Message.where('oppo_id', params[:user_id])
    @message = Message.new
    @user = User.find(params[:user_id])
  end
  def create
    @message = Message.new(message_params)
    if @message.save
      redirect_to new_user_message_path(params[:user_id])
    else
      redirect_to root_path
    end

    # @gmesage = @group.
  end

  private

  def message_params
    params.require(:message).permit(:content,:image).merge(user_id: current_user.id,oppo_id:params[:user_id])
  end

end
