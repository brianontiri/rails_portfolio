class RatingsController < ApplicationController
 def create
   @project = Project.find(params[:project_id])
   @rating = @project.ratings.create(params[:rating].permit(:name, :body))
   redirect_to project_path(@project)
end
 def destroy
   @project = Project.find(params[:project_id])
   @rating = @project.ratings.find(params[:id])
   @rating.destroy
   redirect_to project_path(@project)
end

end
