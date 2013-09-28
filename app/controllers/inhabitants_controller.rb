class InhabitantsController < ApplicationController
  before_action :set_inhabitant, only: [:show, :edit, :update, :destroy]

  # GET /inhabitants
  # GET /inhabitants.json
  def index
    @inhabitants = Inhabitant.all
  end

  # GET /inhabitants/1
  # GET /inhabitants/1.json
  def show
  end

  # GET /inhabitants/new
  def new
    @inhabitant = Inhabitant.new
  end

  # GET /inhabitants/1/edit
  def edit
  end

  # POST /inhabitants
  # POST /inhabitants.json
  def create
    @inhabitant = Inhabitant.new(inhabitant_params)

    respond_to do |format|
      if @inhabitant.save
        format.html { redirect_to @inhabitant, notice: 'Inhabitant was successfully created.' }
        format.json { render action: 'show', status: :created, location: @inhabitant }
      else
        format.html { render action: 'new' }
        format.json { render json: @inhabitant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inhabitants/1
  # PATCH/PUT /inhabitants/1.json
  def update
    respond_to do |format|
      if @inhabitant.update(inhabitant_params)
        format.html { redirect_to @inhabitant, notice: 'Inhabitant was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @inhabitant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inhabitants/1
  # DELETE /inhabitants/1.json
  def destroy
    @inhabitant.destroy
    respond_to do |format|
      format.html { redirect_to inhabitants_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inhabitant
      @inhabitant = Inhabitant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def inhabitant_params
      params[:inhabitant]
    end
end
