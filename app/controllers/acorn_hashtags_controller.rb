class AcornHashtagsController < ApplicationController
  before_action :set_acorn_hashtag, only: %i[ show edit update destroy ]

  # GET /acorn_hashtags or /acorn_hashtags.json
  def index
    @acorn_hashtags = AcornHashtag.all
  end

  # GET /acorn_hashtags/1 or /acorn_hashtags/1.json
  def show
  end

  # GET /acorn_hashtags/new
  def new
    @acorn_hashtag = AcornHashtag.new
  end

  # GET /acorn_hashtags/1/edit
  def edit
  end

  # POST /acorn_hashtags or /acorn_hashtags.json
  def create
    @acorn_hashtag = AcornHashtag.new(acorn_hashtag_params)

    respond_to do |format|
      if @acorn_hashtag.save
        format.html { redirect_to acorn_hashtag_url(@acorn_hashtag), notice: "Acorn hashtag was successfully created." }
        format.json { render :show, status: :created, location: @acorn_hashtag }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @acorn_hashtag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /acorn_hashtags/1 or /acorn_hashtags/1.json
  def update
    respond_to do |format|
      if @acorn_hashtag.update(acorn_hashtag_params)
        format.html { redirect_to acorn_hashtag_url(@acorn_hashtag), notice: "Acorn hashtag was successfully updated." }
        format.json { render :show, status: :ok, location: @acorn_hashtag }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @acorn_hashtag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /acorn_hashtags/1 or /acorn_hashtags/1.json
  def destroy
    @acorn_hashtag.destroy

    respond_to do |format|
      format.html { redirect_to acorn_hashtags_url, notice: "Acorn hashtag was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_acorn_hashtag
      @acorn_hashtag = AcornHashtag.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def acorn_hashtag_params
      params.require(:acorn_hashtag).permit(:acorn_id, :hastag_id)
    end
end
