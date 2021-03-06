class RequestsController < ApplicationController
  # GET /requests
  # GET /requests.xml
  
  layout :requests, :except=>[:imdb_preview, :imdb_confirm]
  
  def index
    @requests = Request.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @requests }
    end
  end
  
  def imdb_preview
    @requester_name = params['requester_name']
    @requester_email = params['requester_email']
    @link = params['link']
    @request = Request.new(:requester_name=>@requester_name, :requester_email=>@requester_email, :imdb_permalink=>@link)
    if !@request.valid? 
      flash[:error] = @request.errors.map{|error| error.join(" ").sub("_", " ")}
      render :partial=>'display/form_errors'
    else  
      @imdb_scraper = IMDBScraper.new(@link)
    end
  end
  
  def imdb_confirm
    @url = params['imdb_link']
    @name = params['requester_name']
    @email = params['requester_email']
    
    film = Film.find(:first, :conditions=>['imdb_permalink = ?',@url]);
    @found = true if film
    film ||=  Film.createFromIMDB(@url)
    request = Request.new(:film_id=>film.id, :requester_name=>@name, :requester_email=>@email, :imdb_permalink=>@url)
  end

  # GET /requests/1
  # GET /requests/1.xml
  def show
    @request = Request.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @request }
    end
  end

  # GET /requests/new
  # GET /requests/new.xml
  def new
    @request = Request.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @request }
    end
  end

  # GET /requests/1/edit
  def edit
    @request = Request.find(params[:id])
  end

  # POST /requests
  # POST /requests.xml
  def create
    @request = Request.new(params[:request])

    respond_to do |format|
      if @request.save
        flash[:notice] = 'Request was successfully created.'
        format.html { redirect_to(@request) }
        format.xml  { render :xml => @request, :status => :created, :location => @request }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @request.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /requests/1
  # PUT /requests/1.xml
  def update
    @request = Request.find(params[:id])

    respond_to do |format|
      if @request.update_attributes(params[:request])
        flash[:notice] = 'Request was successfully updated.'
        format.html { redirect_to(@request) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @request.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /requests/1
  # DELETE /requests/1.xml
  def destroy
    @request = Request.find(params[:id])
    @request.destroy

    respond_to do |format|
      format.html { redirect_to(requests_url) }
      format.xml  { head :ok }
    end
  end
end
