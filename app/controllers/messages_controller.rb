class MessagesController < ApplicationController
  def index
    @messages = Message.where('oppo_id', params[:user_id])
    @message = Message.new
    @user = User.find(params[:user_id])
  end
  def new
    @message = Message.new
  end
  def create
    @message =Message.new(message_params)

    if @message.save
      redirect_to user_messages_path(params[:user_id])
    else
      redirect_to root_path
    end
  end
  def show

  end

  private

  def message_params
    params.permit(:content,:image).merge(user_id: current_user.id,oppo_id:params[:user_id])
  end
end
