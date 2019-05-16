class MessagesController < ApplicationController
  def index
    # @messages = @user.messages
  end
  def new
    @message = Message.new
  end
  def create
    @message =@user.messages.new(message_params)

    if @message.save
      redirect_to root_path
    else
      redirect_to '/'
    end
  end
  def show
  end

  private

  def message_params
    params.permit(:content,:image).merge(user_id: current_user.id)
  end
end
