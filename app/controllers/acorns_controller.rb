class AcornsController < ApplicationController
  before_action :set_acorn, only: %i[ show edit update destroy ]

  # GET /acorns or /acorns.json
  def index
    @acorns = Acorn.all
  end

  # GET /acorns/1 or /acorns/1.json
  def show
  end

  # GET /acorns/new
  def new
    @acorn = Acorn.new
  end

  # GET /acorns/1/edit
  def edit
  end

  # POST /acorns or /acorns.json
  def create
    @acorn = Acorn.new(acorn_params)

    respond_to do |format|
      if @acorn.save
        format.html { redirect_to acorn_url(@acorn), notice: "Acorn was successfully created." }
        format.json { render :show, status: :created, location: @acorn }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @acorn.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /acorns/1 or /acorns/1.json
  def update
    respond_to do |format|
      if @acorn.update(acorn_params)
        format.html { redirect_to acorn_url(@acorn), notice: "Acorn was successfully updated." }
        format.json { render :show, status: :ok, location: @acorn }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @acorn.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /acorns/1 or /acorns/1.json
  def destroy
    @acorn.destroy

    respond_to do |format|
      format.html { redirect_to acorns_url, notice: "Acorn was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_acorn
      @acorn = Acorn.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def acorn_params
      params.require(:acorn).permit(:content, :date_created, :img, :link, :reply, :user_id)
    end
end
