class PagesController < ApplicationController

  layout false
  
  def index
    @pages = Page.all
  end

  def show
    @page = Page.find(params[:id])
  end

  def new
    @page = Page.new(name: 'default')
  end

  def create
    @page = Page.new(page_params)
    if @page.save
      flash[:notice] = "You've successfully created a new page"
      redirect_to({action: :index})
    else
      render action: :new
    end
  end

  def edit
    @page = Page.find(params[:id])
  end

  def update
    @page = Page.find(params[:id])
    if @page.update_attributes(page_params)
      flash[:notice] = "You successfully updated the page '#{@page.name}'"
      redirect_to(action: :show, id: @page.id)
    else
      render action: :edit
    end

  end

  def delete
    @page = Page.find(params[:id])
  end

  def destroy
    page = Page.find(params[:id]).destroy
    flash[:notice] = "You have successfully deleted the page '#{page.name}'"
    redirect_to(action: 'index') 
  end

  private

  def page_params
    params.require(:page).permit(:name, :permalink, :postion, :visible, :subject_id)
  end
end
