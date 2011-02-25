class SaisonsController < ApplicationController
  # GET /saisons
  # GET /saisons.xml
  def index
    @saisons = Saison.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @saisons }
    end
  end

  # GET /saisons/1
  # GET /saisons/1.xml
  def show
    @saison = Saison.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @saison }
    end
  end

  # GET /saisons/new
  # GET /saisons/new.xml
  def new
    @saison = Saison.new
	@ligas = Liga.all
	
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @saison }
    end
  end

  # GET /saisons/1/edit
  def edit
    @saison = Saison.find(params[:id])
	@ligas = Liga.all
  end

  # POST /saisons
  # POST /saisons.xml
  def create
    @saison = Saison.new(params[:saison])
	
    respond_to do |format|
      if @saison.save
        format.html { redirect_to(@saison, :notice => 'Saison was successfully created.') }
        format.xml  { render :xml => @saison, :status => :created, :location => @saison }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @saison.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /saisons/1
  # PUT /saisons/1.xml
  def update
    @saison = Saison.find(params[:id])

    respond_to do |format|
      if @saison.update_attributes(params[:saison])
        format.html { redirect_to(@saison, :notice => 'Saison was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @saison.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /saisons/1
  # DELETE /saisons/1.xml
  def destroy
    @saison = Saison.find(params[:id])
    @saison.destroy

    respond_to do |format|
      format.html { redirect_to(saisons_url) }
      format.xml  { head :ok }
    end
  end
end
