class DogsController < ApplicationController

  def index
    @dogs = Dog.all
    # @user = Message.find(params[user_id: user_id])
    # @groups = @user.messages.where(params[:group_id])
  end
  def new
    @dog = Dog.new
  end
  def create
    @dog = current_user.dogs.new(dog_params)
    if @dog.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @dogs = Dog.where(user_id: current_user.id)
    # 自分が持ってる犬を持ってくるコード
  end

  def edit
    @dogs = Dog.find(params[:id])
  end
  def update
    @dogs = Dog.find(params[:id])
    if @dogs.user_id == current_user.id
      @dogs.update(dog_params)
      redirect_to root_path
    else
      render :edit
    end
  end
  def destroy
    @user = current_user
    @dog = @user.dogs.find(params[:id])
    if @dog.destroy!
      redirect_to root_path
    else
      render :edit
    end
  end
 

  def search
    @dogs = Dog.where('prefecture LIKE ? and municipalities LIKE ? and town LIKE ? and breed LIKE ?',"%#{params[:prefecture]}%","%#{params[:municipalities]}%","%#{params[:town]}%","%#{params[:breed]}%")
    
  end


  private

  def dog_params
    params.require(:dog).permit(:image,:name,:breed,:prefecture,:municipalities,:town,:age,:sex)
  end


end
