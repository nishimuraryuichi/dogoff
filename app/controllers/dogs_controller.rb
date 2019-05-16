class DogsController < ApplicationController
  # before_action :set_dogs

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
  def edit
    @dog = Dog.find(params[:id])
  end
  def update
    @dog = Dog.find(params[:id])

    if @dog.user_id == current_user.id
      @dog.update(dog_params)
      redirect_to root_path
    end
  end
  def destroy
  end
 

  def search
    @dogs = Dog.where('prefecture LIKE ? and municipalities LIKE ? and town LIKE ? and breed LIKE ?',"%#{params[:prefecture]}%","%#{params[:municipalities]}%","%#{params[:town]}%","%#{params[:breed]}%")
  end


  private

  def dog_params
    params.require(:dog).permit(:image,:name,:breed,:prefecture,:municipalities,:town,:age,:sex)
  end

  # def set_dogs
  #   @user = User.all
  # end

end
