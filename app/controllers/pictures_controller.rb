class PicturesController < ApplicationController

  def mail
    @picture = Picture.create(picture_params)
    PictureMailer.send_pic(@picture).deliver_now

  end

  private

  def picture_params
    params.require(:picture).permit(:email, :url)
  end

end
