class UserMailer < ActionMailer::Base
  default from: "sebaryco@gmail.com"
  def notificacion_feriado(user)
  mail(:to => user.email, :subject => "Dia Feriado")
  end
end
