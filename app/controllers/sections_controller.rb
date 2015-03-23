class SectionsController < ApplicationController
  layout false

  def index
    @sections = Section.sorted
  end

  def show
    @section = Section.find(params[:id])
  end

  def new
    @section = Section.new
  end

  def create
    @section = Section.new(section_params)
    if @section.save
      flash[:notice] = "Section successfully saved!!!"
      redirect_to action: :index
    else
      render action: :new
    end
  end

  def edit
    @section = Section.find(params[:id])
  end

  def update
    @section = Section.find(params[:id])
    if @section.update_attributes(section_params)
      flash[:notice] = "Section successfully updated!"
      redirect_to action: :show, id: @section.id
    else
      render action: :edit
    end
  end

  def delete
    @section = Section.find(params[:id])
  end

  def destroy
    section = Section.find(params[:id]).destroy
    flash[:notice] = "Section '#{section.name}' destroyed"
    redirect_to action: :index
  end

  private 

  def section_params
    params.require(:section).permit(:name, :postion, :visible, :content_type, :content, :page_id)
  end
end
