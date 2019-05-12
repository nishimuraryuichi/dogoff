class DogsController < ApplicationController
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
  def search
    @dogs = Dog.where('prefecture LIKE ? and municipalities LIKE ? and town LIKE ? and breed LIKE ?',"%#{params[:prefecture]}%","%#{params[:municipalities]}%","%#{params[:town]}%","%#{params[:breed]}%")
  end


  private

  def dog_params
    params.require(:dog).permit(:image,:name,:breed,:prefecture,:municipalities,:town,:age,:sex)
  end

end
