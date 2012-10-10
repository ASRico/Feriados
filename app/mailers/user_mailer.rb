class UserMailer < ActionMailer::Base
 # default from: "sebaryco@gmail.com"
  def notificacion_feriado(user, cliente, diaferiados)
  	from: user.email
  	mail(:to => cliente.email, :subject => "Dia Feriado")
  end
end
