class PictureMailer < ApplicationMailer
  default from: ''

  def send_pic(picture)

  @picture = picture
    mail(to: @picture.email, subject: 'Test')
  end
end
