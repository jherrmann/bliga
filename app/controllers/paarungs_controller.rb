class PaarungsController < ApplicationController
  # GET /paarungs
  # GET /paarungs.xml
  def index
    @paarungs = Paarung.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @paarungs }
    end
  end

  # GET /paarungs/1
  # GET /paarungs/1.xml
  def show
    @paarung = Paarung.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @paarung }
    end
  end

  # GET /paarungs/new
  # GET /paarungs/new.xml
  def new
    @paarung = Paarung.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @paarung }
    end
  end

  # GET /paarungs/1/edit
  def edit
    @paarung = Paarung.find(params[:id])
  end

  # POST /paarungs
  # POST /paarungs.xml
  def create
    @paarung = Paarung.new(params[:paarung])

    respond_to do |format|
      if @paarung.save
        format.html { redirect_to(@paarung, :notice => 'Paarung was successfully created.') }
        format.xml  { render :xml => @paarung, :status => :created, :location => @paarung }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @paarung.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /paarungs/1
  # PUT /paarungs/1.xml
  def update
    @paarung = Paarung.find(params[:id])

    respond_to do |format|
      if @paarung.update_attributes(params[:paarung])
        format.html { redirect_to(@paarung, :notice => 'Paarung was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @paarung.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /paarungs/1
  # DELETE /paarungs/1.xml
  def destroy
    @paarung = Paarung.find(params[:id])
    @paarung.destroy

    respond_to do |format|
      format.html { redirect_to(paarungs_url) }
      format.xml  { head :ok }
    end
  end
end
