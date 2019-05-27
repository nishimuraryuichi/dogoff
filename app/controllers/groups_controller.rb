class GroupsController < ApplicationController
  def index
  
  end
  def new
    @group = Group.new
  end
  def create
    @group = Group.new(group_params)

    if @group.save
      redirect_to root_path
    else
      render :new
    end
  end
  def search
    @groups =Group.where('name LIKE ? and breed LIKE ? and town LIKE ? and any LIKE ?',"%#{params[:name]}%","%#{params[:breed]}%","%#{params[:town]}%","%#{params[:any]}%")

  end

  private
  def group_params
    params.require(:group).permit(:image,:name,:breed,:town,:any)
  end


end
