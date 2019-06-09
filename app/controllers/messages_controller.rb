class MessagesController < ApplicationController

  def index
    @messages = Message.where(user_id: params[:group_id]).select(:group_id).distinct
    @dogs = Dog.where(user_id: current_user.id)
    # @messages = Message.@group.find(user_id: current_user.id)
  end
  def new
    # @messages = Message.where('oppo_id', params[:user_id])
    # @user = User.find(params[:user_id])
    @message = Message.new
    @group = Group.find(params[:group_id])
    @messages = @group.messages.includes(:user)
  end
  def create
    # @message = Message.new(message_params)
    # if @message.save
    #   redirect_to new_user_message_path(params[:user_id])
    # else
    #   redirect_to root_path
    # end
    
    @group = Group.find(params[:group_id])
    @message = @group.messages.new(message_params)
    if @message.save
      redirect_to new_group_message_path(@group)
    else
      redirect_to root_path
    end
  end

  private

  def message_params
    # params.require(:message).permit(:content,:image).merge(user_id: current_user.id,oppo_id:params[:user_id])
    params.require(:message).permit(:content,:image).merge(user_id: current_user.id)
  end

end
