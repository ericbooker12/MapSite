class ProjectsController < ApplicationController
  def index
    @projects = Project.all
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
  end

  def destroy
  end

  private

    def project_params
      params.require(:project).permit(:name, :project_number, :latitude, :longitude, :elevation, :apn, :city, :county, :zip_code, :state )
    end

    def full_address(address)
      address.address + "<br>" + address.city + ", " + address.state + " " +  address.zip_code
    end

end
