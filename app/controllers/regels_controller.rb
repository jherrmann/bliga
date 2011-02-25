class RegelsController < ApplicationController
  # GET /regels
  # GET /regels.xml
  def index
    @regels = Regel.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @regels }
    end
  end

  # GET /regels/1
  # GET /regels/1.xml
  def show
    @regel = Regel.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @regel }
    end
  end

  # GET /regels/new
  # GET /regels/new.xml
  def new
    @regel = Regel.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @regel }
    end
  end

  # GET /regels/1/edit
  def edit
    @regel = Regel.find(params[:id])
  end

  # POST /regels
  # POST /regels.xml
  def create
    @regel = Regel.new(params[:regel])

    respond_to do |format|
      if @regel.save
        format.html { redirect_to(@regel, :notice => 'Regel was successfully created.') }
        format.xml  { render :xml => @regel, :status => :created, :location => @regel }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @regel.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /regels/1
  # PUT /regels/1.xml
  def update
    @regel = Regel.find(params[:id])

    respond_to do |format|
      if @regel.update_attributes(params[:regel])
        format.html { redirect_to(@regel, :notice => 'Regel was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @regel.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /regels/1
  # DELETE /regels/1.xml
  def destroy
    @regel = Regel.find(params[:id])
    @regel.destroy

    respond_to do |format|
      format.html { redirect_to(regels_url) }
      format.xml  { head :ok }
    end
  end
end
