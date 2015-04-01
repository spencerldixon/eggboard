class FoundEggsController < ApplicationController
  before_action :set_found_egg, only: [:show, :edit, :update, :destroy]

  # GET /found_eggs
  # GET /found_eggs.json
  def index
    @found_eggs = FoundEgg.order('created_at ASC')
  end

  # GET /found_eggs/1
  # GET /found_eggs/1.json
  def show
  end

  # GET /found_eggs/new
  def new
    @found_egg = FoundEgg.new
  end

  # GET /found_eggs/1/edit
  def edit
  end

  # POST /found_eggs
  # POST /found_eggs.json
  def create
    @found_egg = FoundEgg.new(found_egg_params)

    respond_to do |format|
      if @found_egg.save
        format.html { redirect_to root_path, notice: 'Egg-cellent work!' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /found_eggs/1
  # PATCH/PUT /found_eggs/1.json
  def update
    respond_to do |format|
      if @found_egg.update(found_egg_params)
        format.html { redirect_to @found_egg, notice: 'Found egg was successfully updated.' }
        format.json { render :show, status: :ok, location: @found_egg }
      else
        format.html { render :edit }
        format.json { render json: @found_egg.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /found_eggs/1
  # DELETE /found_eggs/1.json
  def destroy
    @found_egg.destroy
    respond_to do |format|
      format.html { redirect_to found_eggs_url, notice: 'Found egg was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_found_egg
      @found_egg = FoundEgg.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def found_egg_params
      params.require(:found_egg).permit(:name)
    end
end
