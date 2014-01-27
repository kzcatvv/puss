class PlaceInfosController < ApplicationController
  before_action :set_place_info, only: [:show, :edit, :update, :destroy]

  # GET /place_infos
  # GET /place_infos.json
  def index
    @place_infos = PlaceInfo.all.order("place_kind")
  end

  # GET /place_infos/1
  # GET /place_infos/1.json
  def show
  end

  # GET /place_infos/new
  def new
    @place_info = PlaceInfo.new
  end

  # GET /place_infos/1/edit
  def edit
  end

  # POST /place_infos
  # POST /place_infos.json
  def create
    #TODO
    #current_place_no = PlaceInfo.get_max_place_no(params["place_info"]["place_kind"]) + 1
    #params["place_info"]["place_no"] = current_place_no

    @place_info = PlaceInfo.new(place_info_params)

    current_place_no = @place_info.get_max_place_no(params["place_info"]["place_kind"]) + 1
    puts("current_place_no = " + String(current_place_no))
    @place_info.place_no = current_place_no

    respond_to do |format|
      if @place_info.save
        format.html { redirect_to @place_info, notice: 'Place info was successfully created.' }
        format.json { render action: 'show', status: :created, location: @place_info }
      else
        format.html { render action: 'new' }
        format.json { render json: @place_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /place_infos/1
  # PATCH/PUT /place_infos/1.json
  def update
    respond_to do |format|
      if @place_info.update(place_info_params)
        format.html { redirect_to @place_info, notice: 'Place info was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @place_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /place_infos/1
  # DELETE /place_infos/1.json
  def destroy
    @place_info.destroy
    respond_to do |format|
      format.html { redirect_to place_infos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_place_info
      @place_info = PlaceInfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def place_info_params
      params.require(:place_info).permit(:place_kind, :place_no, :place_name, :place_workday_start1, :place_workday_end1, :place_workday_start2, :place_workday_end2, :place_workday_start3, :place_workday_end3, :place_weekend_start1, :place_weekend_end1, :place_weekend_start2, :place_weekend_end2, :place_weekend_start3, :place_weekend_end3, :place_holiday_start1, :place_holiday_end1, :place_holiday_start2, :place_holiday_end2, :place_holiday_start3, :place_holiday_end3, :place_info)
    end
end
