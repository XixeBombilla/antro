class PublicController < ApplicationController
  layout 'publico'
  
  def index
  end
  
  def about
  end
  
  def event
    
    @eventos= Evento.all
   
    
  end
  
  def gallery
    
    @galeriasT= Galeria.all
   
    
  end
  
  def photo
    @fotos = Foto.all
  end
  
end
