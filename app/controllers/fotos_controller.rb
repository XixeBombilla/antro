class FotosController < ApplicationController
  # GET /fotos
  # GET /fotos.xml
  
  before_filter :login_required
 layout "admin"
  def index
    @fotos = Foto.all.reverse

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @fotos }
    end
  end

  # GET /fotos/1
  # GET /fotos/1.xml
  def show
    @foto = Foto.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @foto }
    end
  end

  # GET /fotos/new
  # GET /fotos/new.xml
  def new
    @foto = Foto.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @foto }
    end
  end

  # GET /fotos/1/edit
  def edit
    @foto = Foto.find(params[:id])
  end

  # POST /fotos
  # POST /fotos.xml
  def create
    @foto = Foto.new(params[:foto])

    respond_to do |format|
      if @foto.save
        format.html { redirect_to(@foto, :notice => 'Foto was successfully created.') }
        format.xml  { render :xml => @foto, :status => :created, :location => @foto }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @foto.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /fotos/1
  # PUT /fotos/1.xml
  def update
    @foto = Foto.find(params[:id])

    respond_to do |format|
      if @foto.update_attributes(params[:foto])
        format.html { redirect_to(@foto, :notice => 'Foto was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @foto.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /fotos/1
  # DELETE /fotos/1.xml
  def destroy
    @foto = Foto.find(params[:id])
    @foto.destroy

    respond_to do |format|
      format.html { redirect_to(fotos_url) }
      format.xml  { head :ok }
    end
  end
end
