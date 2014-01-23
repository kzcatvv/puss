class UserInfosController < ApplicationController
  before_action :set_user_info, only: [:show, :edit, :update, :destroy]

  # GET /user_infos
  # GET /user_infos.json
  def index
    @user_infos = UserInfo.all
  end

  # GET /user_infos/1
  # GET /user_infos/1.json
  def show
  end

  # GET /user_infos/new
  def new
    # puts "***********************************"
    # if (5 & 1) == 1 
    #   puts "5 & 1 = 1"
    # end
    # if (5 & 2) == 1
    #   puts "5 & 2 = 1"
    # end
    # if (5 & 4)
    #   puts "5 & 4 = 1" + String(5&4)
    # end
    # puts "***********************************"
    @user_info = UserInfo.new
  end

  # GET /user_infos/1/edit
  def edit
        puts "***********************************"
    puts params
        puts "***********************************"
    # limitcode = Integer(params["user_limit"])
    limitcode = 5
    limithash = {}
    UserInfo::USER_LIMIT.each do |key,value|
      if (limitcode & key) > 0
        limithash.store(value,key.to_s) 
      end
    end
    params.store("limit",limithash)
  end

  # POST /user_infos
  # POST /user_infos.json
  def create
    # calculate the user_limit code depand on which check box checked and save it into params
    limit = params["limit"]
    limitcode = 0
    limit.each do |key,value|
      limitcode = limitcode + Integer(value)
    end
    params["user_info"]["user_limit"] = limitcode.to_s

    # save the user info into DB
    @user_info = UserInfo.new(user_info_params)

    respond_to do |format|
      if @user_info.save
        format.html { redirect_to @user_info, notice: 'User info was successfully created.' }
        format.json { render action: 'show', status: :created, location: @user_info }
      else
        format.html { render action: 'new' }
        format.json { render json: @user_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_infos/1
  # PATCH/PUT /user_infos/1.json
  def update
    respond_to do |format|
      if @user_info.update(user_info_params)
        format.html { redirect_to @user_info, notice: 'User info was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_infos/1
  # DELETE /user_infos/1.json
  def destroy
    @user_info.destroy
    respond_to do |format|
      format.html { redirect_to user_infos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_info
      @user_info = UserInfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_info_params
      params.require(:user_info).permit(:user_id, :user_password, :user_name, :user_sex, :user_birth, :user_phone_number, :user_company, :user_department, :user_kind, :user_limit, :user_info)
    end
end
