require "base64"
require 'cloudinary'

class PicturesController < ApplicationController



  def mail
    @picture = Picture.create(picture_params)
    @picture.url = uploadToCloudinary(@picture.url)

    PictureMailer.send_pic(@picture).deliver_now
    render json: @picture
  end

  private

  def picture_params
    params.require(:picture).permit(:email, :url)
  end

  def uploadToCloudinary(data)
   Cloudinary::Uploader.upload(data)["url"]
 end

end
