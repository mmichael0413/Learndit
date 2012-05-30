class CodesController < ApplicationController

  def index
    @codes = Code.all
    
    respond_to do |format|
      format.html #index.html.erb
      format.xml { render :xml => @codes }
    end
  end

  def show
    @code = Code.find(params[:id])
  
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @code }
    end
  end

  def new
    @code = Code.new
  
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @code }
    end
  end

  def edit
    @code = Code.find(params[:id])
  end

  def create
    @code = Code.new(params[:code])
    
    respond_to do |format|
      if @code.save
       
        format.html { redirect_to(@code,
                      :notice => 'Code snippet was successfully created.') }
        format.xml  { render :xml => @code,
                      :status => :created, :location => @code }
      else
        format.html { render :action => "New" }
        format.xml  { render :xml => @code.errors,
                      :status => :unprocessable_entity }
      end
    end
  end

  def update
    @code = Code.find(params[:id])
  
    respond_to do |format|
      if @code.update_attributes(params[:code])
        format.html { redirect_to(@code, 
                      :notice => 'Code snippet was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "Edit" }
        format.xml  { render :xml => @code.errors,
                      :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @code = Code.find(params[:id])
    @code.destroy
  
    respond_to do |format|
      format.html { redirect_to(codes_url) }
      format.xml  { head :ok }
    end
  end
  
end