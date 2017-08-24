class SkillsController < ApplicationController
  before_action :set_skill, only: [:show, :edit, :update, :destroy]



  def index
    @skills = Skill.all
  end


  def show
    # @comments = Comment.where(post_id: @post).order("created_at DESC")
  end


  def new
    @skill = Skill.new
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts
  # POST /posts.json
  def create
    @skills = Skill.all
    @skill = Skill.new(skill_params)

    respond_to do |format|
      if @skill.save
        format.html { redirect_to @skill, notice: 'skill was successfully created.' }
        format.js
        format.json { render :show, status: :created, location: @skill }
      else
        format.html { render :new }
        format.json { render json: @skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    respond_to do |format|
      if @skill.update(skill_params)
        format.html { redirect_to @skill, notice: 'skill was successfully updated.' }
        format.json { render :show, status: :ok, location: @skill}
      else
        format.html { render :edit }
        format.json { render json: @skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @skill = Skill.find(params[:id])
    @skill.destroy
    respond_to do |format|
      format.html { redirect_to skills_url, notice: 'skill was successfully destroyed.' }
      format.json { head :no_content }

    end
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_skill
      @skill = Skill.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def skill_params
      params.require(:skill).permit(:name, :description, :projects)
    end
end
