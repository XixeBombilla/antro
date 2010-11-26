class UserMailer < ActionMailer::Base
  def correo_pagina(contacto)
    from contacto.correo
    recipients 'la.nuit@live.com '
    subject "Desde la Pagina Web LaNuiClub"
    body :contacto => contacto 
    @sent_on      = Time.now
    @content_type = "text/html"
    @body[:contacto]  = contacto
  end  

end
