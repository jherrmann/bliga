class LigasController < ApplicationController
  # GET /ligas
  # GET /ligas.xml
  def index
    @ligas = Liga.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @ligas }
    end
  end

  # GET /ligas/1
  # GET /ligas/1.xml
  def show
    @liga = Liga.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @liga }
    end
  end

  # GET /ligas/new
  # GET /ligas/new.xml
  def new
    @liga = Liga.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @liga }
    end
  end

  # GET /ligas/1/edit
  def edit
    @liga = Liga.find(params[:id])
  end

  # POST /ligas
  # POST /ligas.xml
  def create
    @liga = Liga.new(params[:liga])

    respond_to do |format|
      if @liga.save
        format.html { redirect_to(@liga, :notice => 'Liga was successfully created.') }
        format.xml  { render :xml => @liga, :status => :created, :location => @liga }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @liga.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /ligas/1
  # PUT /ligas/1.xml
  def update
    @liga = Liga.find(params[:id])

    respond_to do |format|
      if @liga.update_attributes(params[:liga])
        format.html { redirect_to(@liga, :notice => 'Liga was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @liga.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /ligas/1
  # DELETE /ligas/1.xml
  def destroy
    @liga = Liga.find(params[:id])
    @liga.destroy

    respond_to do |format|
      format.html { redirect_to(ligas_url) }
      format.xml  { head :ok }
    end
  end
end
