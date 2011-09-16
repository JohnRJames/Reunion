class ReunionOptionsController < ApplicationController
  # GET /reunion_options
  # GET /reunion_options.xml
  def index
    @reunion_options = ReunionOption.paginate :page=>params[:page], :order => 'created_at desc',
      :per_page => 3

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @reunion_options }
    end
  end

  # GET /reunion_options/1
  # GET /reunion_options/1.xml
  def show
    @reunion_option = ReunionOption.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @reunion_option }
    end
  end

  # GET /reunion_options/new
  # GET /reunion_options/new.xml
  def new
    @reunion_option = ReunionOption.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @reunion_option }
    end
  end

  # GET /reunion_options/1/edit
  def edit
    @reunion_option = ReunionOption.find(params[:id])
  end

  # POST /reunion_options
  # POST /reunion_options.xml
  def create
    @reunion_option = ReunionOption.new(params[:reunion_option])

    respond_to do |format|
      if @reunion_option.save
        format.html { redirect_to(@reunion_option, :notice => 'Reunion option was successfully created.') }
        format.xml  { render :xml => @reunion_option, :status => :created, :location => @reunion_option }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @reunion_option.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /reunion_options/1
  # PUT /reunion_options/1.xml
  def update
    @reunion_option = ReunionOption.find(params[:id])

    respond_to do |format|
      if @reunion_option.update_attributes(params[:reunion_option])
        format.html { redirect_to(@reunion_option, :notice => 'Reunion option was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @reunion_option.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /reunion_options/1
  # DELETE /reunion_options/1.xml
  def destroy
    @reunion_option = ReunionOption.find(params[:id])
    @reunion_option.destroy

    respond_to do |format|
      format.html { redirect_to(reunion_options_url) }
      format.xml  { head :ok }
    end
  end

def who_bought
    @reunionOption = ReunionOption.find(params[:id])
    respond_to do |format|
      format.html
      format.atom
      format.xml
      format.json { render :json => @reunion_option.to_json(:include => :orders) }
    end
  end
end
