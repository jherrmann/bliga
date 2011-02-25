class SpieltagsController < ApplicationController
  # GET /spieltags
  # GET /spieltags.xml
  def index
    @spieltags = Spieltag.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @spieltags }
    end
  end

  # GET /spieltags/1
  # GET /spieltags/1.xml
  def show
    @spieltag = Spieltag.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @spieltag }
    end
  end

  # GET /spieltags/new
  # GET /spieltags/new.xml
  def new
    @spieltag = Spieltag.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @spieltag }
    end
  end

  # GET /spieltags/1/edit
  def edit
    @spieltag = Spieltag.find(params[:id])
  end

  # POST /spieltags
  # POST /spieltags.xml
  def create
    @spieltag = Spieltag.new(params[:spieltag])

    respond_to do |format|
      if @spieltag.save
        format.html { redirect_to(@spieltag, :notice => 'Spieltag was successfully created.') }
        format.xml  { render :xml => @spieltag, :status => :created, :location => @spieltag }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @spieltag.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /spieltags/1
  # PUT /spieltags/1.xml
  def update
    @spieltag = Spieltag.find(params[:id])

    respond_to do |format|
      if @spieltag.update_attributes(params[:spieltag])
        format.html { redirect_to(@spieltag, :notice => 'Spieltag was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @spieltag.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /spieltags/1
  # DELETE /spieltags/1.xml
  def destroy
    @spieltag = Spieltag.find(params[:id])
    @spieltag.destroy

    respond_to do |format|
      format.html { redirect_to(spieltags_url) }
      format.xml  { head :ok }
    end
  end
end
