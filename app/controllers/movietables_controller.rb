class MovietablesController < ApplicationController
  before_action :set_movietable, only: [:show, :edit, :update, :destroy]

  # GET /movietables
  # GET /movietables.json
  def index
    @movietables = Movietable.order(:ID)
  end

  # GET /movietables/1
  # GET /movietables/1.json
  def show
  end

  # GET /movietables/new
  def new
    @movietable = Movietable.new
  end

  # GET /movietables/1/edit
  def edit
  end

  def UI
  end
  # POST /movietables
  # POST /movietables.json
  def create
    @movietable = Movietable.new(movietable_params)

    respond_to do |format|
      if @movietable.save
        format.html { redirect_to @movietable, notice: 'Movietable was successfully created.' }
        format.json { render :show, status: :created, location: @movietable }
      else
        format.html { render :new }
        format.json { render json: @movietable.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /movietables/1
  # PATCH/PUT /movietables/1.json
  def update
    respond_to do |format|
      if @movietable.update(movietable_params)
        format.html { redirect_to @movietable, notice: 'Movietable was successfully updated.' }
        format.json { render :show, status: :ok, location: @movietable }
      else
        format.html { render :edit }
        format.json { render json: @movietable.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /movietables/1
  # DELETE /movietables/1.json
  def destroy
    @movietable.destroy
    respond_to do |format|
      format.html { redirect_to movietables_url, notice: 'Movietable was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movietable
      @movietable = Movietable.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def movietable_params
      params.require(:movietable).permit(:id, :name, :year, :actor1, :actor2, :actor3)
    end
end
