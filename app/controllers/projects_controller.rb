  class ProjectsController < ApplicationController
    before_action :set_project, only: [:show, :edit, :update, :destroy]



    def index
      @projects = Project.all
    end


    def show
      # @comments = Comment.where(post_id: @post).order("created_at DESC")
    end


    def new
      @project = Project.new
    end

    # GET /posts/1/edit
    def edit
    end

    # POST /posts
    # POST /posts.json
    def create
      @projects = Project.all
      @project = Project.new(project_params)

      respond_to do |format|
        if @project.save
          format.html { redirect_to @project, notice: 'Project was successfully created.' }
          format.js
          format.json { render :show, status: :created, location: @project }
        else
          format.html { render :new }
          format.json { render json: @project.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /posts/1
    # PATCH/PUT /posts/1.json
    def update
      respond_to do |format|
        if @project.update(post_params)
          format.html { redirect_to @project, notice: 'Project was successfully updated.' }
          format.json { render :show, status: :ok, location: @project }
        else
          format.html { render :edit }
          format.json { render json: @project.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /posts/1
    # DELETE /posts/1.json
    def destroy
      @project = Project.find(params[:id])
      @project.destroy
      respond_to do |format|
        format.html { redirect_to projects_url, notice: 'Project was successfully destroyed.' }
        format.json { head :no_content }

      end
    end



    private
      # Use callbacks to share common setup or constraints between actions.
      def set_project
        @project = Project.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def project_params
        params.require(:project).permit(:name, :skill, :description)
      end
  end