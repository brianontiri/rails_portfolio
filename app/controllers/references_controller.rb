class ReferencesController < ApplicationController
  before_action :set_reference, only: [:show, :edit, :update, :destroy]



  def index
    @references = Reference.all
  end


  def show
    # @comments = Comment.where(post_id: @post).order("created_at DESC")
  end


  def new
    @reference = Reference.new
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts
  # POST /posts.json
  def create
    @references = Reference.all
    @reference= Reference.new(reference_params)

    respond_to do |format|
      if @reference.save
        format.html { redirect_to @reference, notice: 'Thank You.' }
        format.js
        format.json { render :show, status: :created, location: @reference}
      else
        format.html { render :new }
        format.json { render json: @reference.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    respond_to do |format|
      if @reference.update(reference_params)
        format.html { redirect_to @reference, notice: 'Thank You.' }
        format.json { render :show, status: :ok, location: @reference}
      else
        format.html { render :edit }
        format.json { render json: @reference.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @reference = Reference.find(params[:id])
    @reference.destroy
    respond_to do |format|
      format.html { redirect_to references_url, notice: 'successfully destroyed.' }
      format.json { head :no_content }

    end
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reference
      @reference = Reference.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reference_params
      params.require(:reference).permit(:name, :location, :contact, :email)
    end
end
