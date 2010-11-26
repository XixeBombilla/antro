class MusicasController < ApplicationController
  # GET /musicas
  # GET /musicas.xml
  layout 'admin'
  before_filter :login_required
  
  def index
    @musicas = Musica.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @musicas }
    end
  end

  # GET /musicas/1
  # GET /musicas/1.xml
  def show
    @musica = Musica.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @musica }
    end
  end

  # GET /musicas/new
  # GET /musicas/new.xml
  def new
    @musica = Musica.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @musica }
    end
  end

  # GET /musicas/1/edit
  def edit
    @musica = Musica.find(params[:id])
  end

  # POST /musicas
  # POST /musicas.xml
  def create
    @musica = Musica.new(params[:musica])

    respond_to do |format|
      if @musica.save
        format.html { redirect_to(@musica, :notice => 'Musica was successfully created.') }
        format.xml  { render :xml => @musica, :status => :created, :location => @musica }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @musica.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /musicas/1
  # PUT /musicas/1.xml
  def update
    @musica = Musica.find(params[:id])

    respond_to do |format|
      if @musica.update_attributes(params[:musica])
        format.html { redirect_to(@musica, :notice => 'Musica was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @musica.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /musicas/1
  # DELETE /musicas/1.xml
  def destroy
    @musica = Musica.find(params[:id])
    @musica.destroy

    respond_to do |format|
      format.html { redirect_to(musicas_url) }
      format.xml  { head :ok }
    end
  end
end
