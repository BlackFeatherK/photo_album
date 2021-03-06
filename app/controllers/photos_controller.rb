class PhotosController < ApplicationController
  before_action :set_photo, only: [:show, :edit, :update, :destroy, :is_public]

  def index
    @photos = Photo.all
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photo_params)
    if @photo.save
      redirect_to photos_path
      flash[:notice] = 'aaaaa'
    else
      flash.now[:notice] = 'bbbbb'
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @photo.update(photo_params)
      redirect_to photo_url(@photo)
    else
      render :edit
    end
  end

  def destroy
    @photo.destroy
    redirect_to photos_path
  end

  def is_public
    @photo.update(is_public: !(@photo.is_public))
  end

  private

  def set_photo
    @photo = Photo.find(params[:id])
  end

  def photo_params
    params.require(:photo).permit(:title, :date, :description, :file_location)
  end
end
