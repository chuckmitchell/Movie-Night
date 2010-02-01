class ViewingsController < ApplicationController
  # GET /viewings
  # GET /viewings.xml
  def index
    @viewings = Viewing.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @viewings }
    end
  end

  # GET /viewings/1
  # GET /viewings/1.xml
  def show
    @viewing = Viewing.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @viewing }
    end
  end

  # GET /viewings/new
  # GET /viewings/new.xml
  def new
    @viewing = Viewing.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @viewing }
    end
  end

  # GET /viewings/1/edit
  def edit
    @viewing = Viewing.find(params[:id])
  end

  # POST /viewings
  # POST /viewings.xml
  def create
    @viewing = Viewing.new(params[:viewing])

    respond_to do |format|
      if @viewing.save
        flash[:notice] = 'Viewing was successfully created.'
        format.html { redirect_to(@viewing) }
        format.xml  { render :xml => @viewing, :status => :created, :location => @viewing }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @viewing.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /viewings/1
  # PUT /viewings/1.xml
  def update
    @viewing = Viewing.find(params[:id])

    respond_to do |format|
      if @viewing.update_attributes(params[:viewing])
        flash[:notice] = 'Viewing was successfully updated.'
        format.html { redirect_to(@viewing) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @viewing.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /viewings/1
  # DELETE /viewings/1.xml
  def destroy
    @viewing = Viewing.find(params[:id])
    @viewing.destroy

    respond_to do |format|
      format.html { redirect_to(viewings_url) }
      format.xml  { head :ok }
    end
  end
end
