class WeightClassesController < ApplicationController
  # GET /weight_classes
  # GET /weight_classes.xml
  def index
    @weight_classes = WeightClass.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @weight_classes }
    end
  end

  # GET /weight_classes/1
  # GET /weight_classes/1.xml
  def show
    @weight_class = WeightClass.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @weight_class }
    end
  end

  # GET /weight_classes/new
  # GET /weight_classes/new.xml
  def new
    @weight_class = WeightClass.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @weight_class }
    end
  end

  # GET /weight_classes/1/edit
  def edit
    @weight_class = WeightClass.find(params[:id])
  end

  # POST /weight_classes
  # POST /weight_classes.xml
  def create
    @weight_class = WeightClass.new(params[:weight_class])

    respond_to do |format|
      if @weight_class.save
        format.html { redirect_to(@weight_class, :notice => 'WeightClass was successfully created.') }
        format.xml  { render :xml => @weight_class, :status => :created, :location => @weight_class }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @weight_class.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /weight_classes/1
  # PUT /weight_classes/1.xml
  def update
    @weight_class = WeightClass.find(params[:id])

    respond_to do |format|
      if @weight_class.update_attributes(params[:weight_class])
        format.html { redirect_to(@weight_class, :notice => 'WeightClass was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @weight_class.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /weight_classes/1
  # DELETE /weight_classes/1.xml
  def destroy
    @weight_class = WeightClass.find(params[:id])
    @weight_class.destroy

    respond_to do |format|
      format.html { redirect_to(weight_classes_url) }
      format.xml  { head :ok }
    end
  end
end
