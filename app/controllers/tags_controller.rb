class TagsController < ApplicationController
  def create
    @tag = Tag.new(params[:tag])
    
    respond_to do |format|
      if @tag.save
       
        format.html { redirect_to(@tag,
                      :notice => 'Tag was successfully created.') }
        format.xml  { render :xml => @tag,
                      :status => :created, :location => @tag }
      else
        format.html { render :action => "New" }
        format.xml  { render :xml => @tag.errors,
                      :status => :unprocessable_entity }
      end
    end
  end
  
  def destroy
    @tag = Tag.find(params[:id])
    @tag.destroy
  
    respond_to do |format|
      format.html { redirect_to(codes_url) }
      format.xml  { head :ok }
    end
  end
end
