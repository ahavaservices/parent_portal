class Admin::ClubClassesController < ApplicationController
  before_action :set_club_class, only: [:show, :edit, :update, :destroy]

  # GET /club_classes
  # GET /club_classes.json
  def index
    @club_classes = ClubClass.all
  end

  # GET /club_classes/1
  # GET /club_classes/1.json
  def show
  end

  # GET /club_classes/new
  def new
    @club_class = ClubClass.new
  end

  # GET /club_classes/1/edit
  def edit
  end

  # POST /club_classes
  # POST /club_classes.json
  def create
    @club_class = ClubClass.new(club_class_params)

    respond_to do |format|
      if @club_class.save
        format.html { redirect_to admin_club_classes_path(@club_class), notice: 'Club class was successfully created.' }
        format.json { render :show, status: :created, location: @club_class }
      else
        format.html { render :new }
        format.json { render json: @club_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /club_classes/1
  # PATCH/PUT /club_classes/1.json
  def update
    respond_to do |format|
      if @club_class.update(club_class_params)
        format.html { redirect_to admin_club_classes_path(@club_class), notice: 'Club class was successfully updated.' }
        format.json { render :show, status: :ok, location: @club_class }
      else
        format.html { render :edit }
        format.json { render json: @club_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /club_classes/1
  # DELETE /club_classes/1.json
  def destroy
    @club_class.destroy
    respond_to do |format|
      format.html { redirect_to admin_club_classes_path, notice: 'Club class was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_club_class
      @club_class = ClubClass.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def club_class_params
      params.require(:club_class).permit(:name, :min_age, :max_age, :max_students, :status, :program_id, :level_id, :staff_id)
    end
end
