class PictureMailer < ApplicationMailer
  default from: 'katysbdaywebsite@gmail.com'

  def send_pic(picture)

    @picture = picture
    mail(to: @picture.email, subject: 'Happy Birthday!')
  end
end
