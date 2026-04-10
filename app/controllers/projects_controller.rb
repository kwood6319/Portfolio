class ProjectsController < ApplicationController
  def show
    @project = Project.find(params[:id])
    @stages = @project.stages
  end
end
