class ProjectsController < ApplicationController

  def index
   @projects = Project.all
  end

  def show
   @project = Project.find_by(params[:id])
  end

  def edit
  	@project = Project.find_by(params[:id])
  end

  def update
  	@project = Project.find_by(params[:id])
  	@project.update(params[:project].permit(:name, :description, :target_pledge_amount, :pledging_ends_on))
  	redirect_to @project
  end
end