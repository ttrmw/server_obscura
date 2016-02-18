class PhotoImagesController < ApplicationController
  before_action :set_photo_image, only: [:show, :update, :destroy]

  # GET /photo_images
  def index
    @photo_images = PhotoImage.all
    render json: @photo_images, root: 'photo_image'
  end

  # GET /photo_images/1
  def show
    render json: @photo_image
  end

  # POST /photo_images
  def create
    @photo_image = PhotoImage.new(photo_image_params)

    if @photo_image.save
      render json: @photo_image, status: :created, location: @photo_image
    else
      render json: @photo_image.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /photo_images/1
  def update
    if @photo_image.update(photo_image_params)
      render json: @photo_image
    else
      render json: @photo_image.errors, status: :unprocessable_entity
    end
  end

  # DELETE /photo_images/1
  def destroy
    @photo_image.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_photo_image
      @photo_image = PhotoImage.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def photo_image_params
      params.require(:photo_image).permit(:metadata)
    end
end
