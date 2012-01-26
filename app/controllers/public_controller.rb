class PublicController < ApplicationController
  layout 'publico'
  
  def index
  end
  
  def about
  end
  
  def event
    @eventos= Evento.all.reverse
  end
  
  def gallery
    
    @galeriasT= Galeria.all.reverse
   
    
  end
  
  def photo
    @fotos = Foto.all.reverse
  end
  
end
