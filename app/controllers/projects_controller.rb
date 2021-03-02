class ProjectsController < ApplicationController

  def index
    # @projects = ['PhotoBag', 'PlazmaM', 'MindExtender']
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
    project_params = params.require(:project).permit( :name, :description, :target_pledge_amount, :will_achieve)
    @project.update(project_params)
    redirect_to project_path
  end

end
