class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
  end

  def show
    @project = Project.find(params[:id])
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
  end

  def update
  end

  def delete
  end

  def destroy
  end

  private

    def project_params
      params.require(:project).permit(:name, :project_number, :latitude, :longitude, :elevation, :apn, :city, :county, :zip_code, :state )
    end

end
