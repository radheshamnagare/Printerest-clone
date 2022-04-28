class ImagepostsController < ApplicationController
  before_action :set_imagepost, only: %i[ show edit update destroy ]

  # GET /imageposts or /imageposts.json
  def index
    @imageposts = Imagepost.all
  end

  # GET /imageposts/1 or /imageposts/1.json
  def show
  end

  # GET /imageposts/new
  def new
    @imagepost = Imagepost.new
  end

  # GET /imageposts/1/edit
  def edit
  end

  # POST /imageposts or /imageposts.json
  def create
    @imagepost = Imagepost.new(imagepost_params)

    respond_to do |format|
      if @imagepost.save
        format.html { redirect_to imagepost_url(@imagepost), notice: "Imagepost was successfully created." }
        format.json { render :show, status: :created, location: @imagepost }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @imagepost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /imageposts/1 or /imageposts/1.json
  def update
    respond_to do |format|
      if @imagepost.update(imagepost_params)
        format.html { redirect_to imagepost_url(@imagepost), notice: "Imagepost was successfully updated." }
        format.json { render :show, status: :ok, location: @imagepost }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @imagepost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /imageposts/1 or /imageposts/1.json
  def destroy
    @imagepost.destroy

    respond_to do |format|
      format.html { redirect_to imageposts_url, notice: "Imagepost was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_imagepost
      @imagepost = Imagepost.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def imagepost_params
      params.require(:imagepost).permit(:title,:image)
    end
end
