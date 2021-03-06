class Admin::ClassRoomsController < ApplicationController
  before_action :set_admin_class_room, only: [:show, :edit, :update, :destroy]

  # GET /admin/class_rooms
  # GET /admin/class_rooms.json
  def index
    @admin_class_rooms = Admin::ClassRoom.all
  end

  # GET /admin/class_rooms/1
  # GET /admin/class_rooms/1.json
  def show
  end

  # GET /admin/class_rooms/new
  def new
    @admin_class_room = Admin::ClassRoom.new
  end

  # GET /admin/class_rooms/1/edit
  def edit
  end

  # POST /admin/class_rooms
  # POST /admin/class_rooms.json
  def create
    @admin_class_room = Admin::ClassRoom.new(admin_class_room_params)

    respond_to do |format|
      if @admin_class_room.save
        format.html { redirect_to @admin_class_room, notice: 'Class room was successfully created.' }
        format.json { render :show, status: :created, location: @admin_class_room }
      else
        format.html { render :new }
        format.json { render json: @admin_class_room.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/class_rooms/1
  # PATCH/PUT /admin/class_rooms/1.json
  def update
    respond_to do |format|
      if @admin_class_room.update(admin_class_room_params)
        format.html { redirect_to @admin_class_room, notice: 'Class room was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_class_room }
      else
        format.html { render :edit }
        format.json { render json: @admin_class_room.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/class_rooms/1
  # DELETE /admin/class_rooms/1.json
  def destroy
    @admin_class_room.destroy
    respond_to do |format|
      format.html { redirect_to admin_class_rooms_url, notice: 'Class room was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_class_room
      @admin_class_room = Admin::ClassRoom.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_class_room_params
      params.require(:admin_class_room).permit(:class_no)
    end
end
