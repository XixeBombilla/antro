class SlidersController < ApplicationController
  # GET /sliders
  # GET /sliders.xml
  
  before_filter :login_required
 layout "admin"
  def index
    @sliders = Slider.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @sliders }
    end
  end

  # GET /sliders/1
  # GET /sliders/1.xml
  def show
    @slider = Slider.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @slider }
    end
  end

  # GET /sliders/new
  # GET /sliders/new.xml
  def new
    @slider = Slider.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @slider }
    end
  end

  # GET /sliders/1/edit
  def edit
    @slider = Slider.find(params[:id])
  end

  # POST /sliders
  # POST /sliders.xml
  def create
    @slider = Slider.new(params[:slider])

    respond_to do |format|
      if @slider.save
        format.html { redirect_to(@slider, :notice => 'Slider was successfully created.') }
        format.xml  { render :xml => @slider, :status => :created, :location => @slider }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @slider.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /sliders/1
  # PUT /sliders/1.xml
  def update
    @slider = Slider.find(params[:id])

    respond_to do |format|
      if @slider.update_attributes(params[:slider])
        format.html { redirect_to(@slider, :notice => 'Slider was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @slider.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /sliders/1
  # DELETE /sliders/1.xml
  def destroy
    @slider = Slider.find(params[:id])
    @slider.destroy

    respond_to do |format|
      format.html { redirect_to(sliders_url) }
      format.xml  { head :ok }
    end
  end
end
