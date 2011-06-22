class BoutsController < ApplicationController
  # GET /bouts
  # GET /bouts.xml
  def index
    @bouts = Bout.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @bouts }
    end
  end

  # GET /bouts/1
  # GET /bouts/1.xml
  def show
    @bout = Bout.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @bout }
    end
  end

  # GET /bouts/new
  # GET /bouts/new.xml
  def new
    @bout = Bout.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @bout }
    end
  end

  # GET /bouts/1/edit
  def edit
    @bout = Bout.find(params[:id])
  end

  # POST /bouts
  # POST /bouts.xml
  def create
    @bout = Bout.new(params[:bout])

    respond_to do |format|
      if @bout.save
        format.html { redirect_to(@bout, :notice => 'Bout was successfully created.') }
        format.xml  { render :xml => @bout, :status => :created, :location => @bout }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @bout.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /bouts/1
  # PUT /bouts/1.xml
  def update
    @bout = Bout.find(params[:id])

    respond_to do |format|
      if @bout.update_attributes(params[:bout])
        format.html { redirect_to(@bout, :notice => 'Bout was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @bout.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /bouts/1
  # DELETE /bouts/1.xml
  def destroy
    @bout = Bout.find(params[:id])
    @bout.destroy

    respond_to do |format|
      format.html { redirect_to(bouts_url) }
      format.xml  { head :ok }
    end
  end
end
