class GaleriasController < ApplicationController
  # GET /galerias
  # GET /galerias.xml
  
  before_filter :login_required
 layout "admin"  
  def index
    @galerias = Galeria.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @galerias }
    end
  end

  # GET /galerias/1
  # GET /galerias/1.xml
  def show
    @galeria = Galeria.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @galeria }
    end
  end

  # GET /galerias/new
  # GET /galerias/new.xml
  def new
    @galeria = Galeria.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @galeria }
    end
  end

  # GET /galerias/1/edit
  def edit
    @galeria = Galeria.find(params[:id])
  end

  # POST /galerias
  # POST /galerias.xml
  def create
    @galeria = Galeria.new(params[:galeria])

    respond_to do |format|
      if @galeria.save
        format.html { redirect_to(@galeria, :notice => 'Galeria was successfully created.') }
        format.xml  { render :xml => @galeria, :status => :created, :location => @galeria }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @galeria.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /galerias/1
  # PUT /galerias/1.xml
  def update
    @galeria = Galeria.find(params[:id])

    respond_to do |format|
      if @galeria.update_attributes(params[:galeria])
        format.html { redirect_to(@galeria, :notice => 'Galeria was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @galeria.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /galerias/1
  # DELETE /galerias/1.xml
  def destroy
    @galeria = Galeria.find(params[:id])
    @galeria.destroy

    respond_to do |format|
      format.html { redirect_to(galerias_url) }
      format.xml  { head :ok }
    end
  end
end
