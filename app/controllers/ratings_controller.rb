class RatingsController < ApplicationController
  def create
    @project =Project.find(params[:id])
    @rating = @project.ratings.create(params[:rating].permit(:content, :vote))
    redirect_to project_path(@project)
  end
end
