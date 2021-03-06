class ProjectsController < ApplicationController

  def index
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
  	if @project.update(project_params)
      flash[:notice] = "Project successfully updated!"
  	   redirect_to @project
     else render :edit
     end
  end

  def new 
  	@project = Project.new
  end

  def create
    
    @project = Project.new(project_params)
      if @project.save
        redirect_to @project, notice: "Project successfully created!"
        else render :new
      end
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to @project
  end

private

def project_params
  params.require(:project).permit(:name, :description, :target_pledge_amount, :pledging_ends_on, :website)
end



end