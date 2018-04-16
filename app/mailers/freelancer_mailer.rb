class FreelancerMailer < ApplicationMailer
  def notification
    @f = params[:freelancer]
    mail(to: 'gluk.main@gmail.com', subject: 'User created!')
  end
end
