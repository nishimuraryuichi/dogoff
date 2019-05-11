class DogsController < ApplicationController
  def new
    @dog = Dog.new
  end
  def create
    @dog = Dog.new(dog_params)
    if @dog.save
      redirect_to root_path
    else
      render :new
    end
  end


  private

  def dog_params
    params.require(:dog).permit(:image,:name,:breed,:prefecture,:municipalities,:town,:age,:sex)
  end

end
