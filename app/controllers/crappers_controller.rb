class CrappersController < ApplicationController
  before_action :set_crapper, only: [:show, :edit, :update, :destroy]

  # GET /crappers
  # GET /crappers.json
  def index
    @crappers = Crapper.all
  end

  # GET /crappers/1
  # GET /crappers/1.json
  def show
  end

  
  # GET /crappers/new
  def new
    @crapper = Crapper.new
  end

  # GET /crappers/1/edit
  def edit
  end

  # POST /crappers
  # POST /crappers.json
  def create
    @crapper = Crapper.new(crapper_params)

    respond_to do |format|
      if @crapper.save
        format.html { redirect_to @crapper, notice: 'Crapper was successfully created.' }
        format.json { render action: 'show', status: :created, location: @crapper }
      else
        format.html { render action: 'new' }
        format.json { render json: @crapper.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /crappers/1
  # PATCH/PUT /crappers/1.json
  def update
    respond_to do |format|
      if @crapper.update(crapper_params)
        format.html { redirect_to @crapper, notice: 'Crapper was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @crapper.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /crappers/1
  # DELETE /crappers/1.json
  def destroy
    @crapper.destroy
    respond_to do |format|
      format.html { redirect_to crappers_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_crapper
      @crapper = Crapper.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def crapper_params
      params.require(:crapper).permit(:city, :district, :name, :address)
    end
end
