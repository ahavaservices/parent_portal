class Admin::StaffsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_staff, only: [:show, :edit, :update, :destroy]

  # GET /staffs
  # GET /staffs.json
  def index
    @staffs = Staff.all
  end

  # GET /staffs/1
  # GET /staffs/1.json
  def show
  end

  # GET /staffs/new
  def new
    @staff = Staff.new
    @staff.build_address
   # @staff.build_user
  end

  # GET /staffs/1/edit
  def edit
  end

  # POST /staffs
  # POST /staffs.json
  def create
    @staff = Staff.new(staff_params)
  #  puts "params testing"
 #   puts staff_params
 #   @staff.build_address
    respond_to do |format|
      if @staff.save
        format.html { redirect_to  admin_staffs_path(@staff), notice: 'Staff was successfully created.' }
        format.json { render :show, status: :created, location: @staff }
      else
        format.html { render :new }
        format.json { render json: @staff.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /staffs/1
  # PATCH/PUT /staffs/1.json
  def update
    respond_to do |format|
      if @staff.update(staff_params)
        format.html { redirect_to  admin_staffs_path(@staff), notice: 'Staff was successfully updated.' }
        format.json { render :show, status: :ok, location: @staff }
      else
        format.html { render :edit }
        format.json { render json: @staff.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /staffs/1
  # DELETE /staffs/1.json
  def destroy
    @staff.destroy
    respond_to do |format|
      format.html { redirect_to admin_staffs_path, notice: 'Staff was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_staff
      @staff = Staff.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def staff_params
      #params.require(:staff).permit(:first_name, :last_name, :title, :hire_date, :release_date, :user_id, :phone_no1, :phone_no2, :address_id, :status)
      params.require(:staff).permit(:first_name, :last_name, :title, :hire_date, :release_date, :phone_no1, :phone_no2, :status, :address_attributes => [:street_1, :street_2, :city, :state, :country, :zip], :user_attributes => [:email, :password, :password_confirmation])
    end
end
