# Preview all emails at http://localhost:3000/rails/mailers/picture_mailer
class PictureMailerPreview < ActionMailer::Preview

  def send_pic_preview
    PictureMailer.send_pic
  end

end
