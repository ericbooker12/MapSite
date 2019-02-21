class ProjectsController < ApplicationController
  def index
    @projects = Project.order(:id)
  end

  def new
    @project = Project.new
  end

  def show
    @project = Project.find(params[:id])
    @full_address = full_address(@project)
  end

  def create
    @project = Project.new(project_params)

    if @project.save
      flash[:notice]
      redirect_to projects_path
    else

    end

  end

  def edit
    @project = Project.find(params[:id])
  end

  def update

    @project = Project.find(params[:id])

    if @project.update_attributes(project_params)
      redirect_to projects_path
    else
      render 'edit'
    end
  end

  def delete
    @project = Project.find(params[:id])
  end

  def destroy
  end

  def full_address(address)
      p "*******************"
      address.address ||= ""
      address.city ||= ""
      address.state ||= ""
      address.zip_code ||= ""
      address.address  + "<br>" + address.city   + ", " + address.state   + " " + address.zip_code


  end

  private

    def project_params
      params.require(:project).permit(:name, :project_number, :address, :latitude, :longitude, :elevation, :apn, :city, :county, :zip_code, :state )
    end


end
