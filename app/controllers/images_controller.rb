class ImagesController < ApplicationController
  def create
    @image = Image.new(image_params)

    if @image.save
      redirect_to @image, notice: "Image was successfully created"
    else
      render action: 'new'
    end
  end

  private
  def image_params
    params.require(:image).permit(:avatar, :name)
  end
end
