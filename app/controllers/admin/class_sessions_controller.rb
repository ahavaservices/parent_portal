class Admin::ClassSessionsController < ApplicationController
  before_action :set_admin_class_session, only: [:show, :edit, :update, :destroy]

  # GET /admin/class_sessions
  # GET /admin/class_sessions.json
  def index
    @admin_class_sessions = Admin::ClassSession.all
  end

  # GET /admin/class_sessions/1
  # GET /admin/class_sessions/1.json
  def show
  end

  # GET /admin/class_sessions/new
  def new
    @admin_class_session = Admin::ClassSession.new
  end

  # GET /admin/class_sessions/1/edit
  def edit
  end

  # POST /admin/class_sessions
  # POST /admin/class_sessions.json
  def create
    @admin_class_session = Admin::ClassSession.new(admin_class_session_params)

    respond_to do |format|
      if @admin_class_session.save
        format.html { redirect_to @admin_class_session, notice: 'Class session was successfully created.' }
        format.json { render :show, status: :created, location: @admin_class_session }
      else
        format.html { render :new }
        format.json { render json: @admin_class_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/class_sessions/1
  # PATCH/PUT /admin/class_sessions/1.json
  def update
    respond_to do |format|
      if @admin_class_session.update(admin_class_session_params)
        format.html { redirect_to @admin_class_session, notice: 'Class session was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_class_session }
      else
        format.html { render :edit }
        format.json { render json: @admin_class_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/class_sessions/1
  # DELETE /admin/class_sessions/1.json
  def destroy
    @admin_class_session.destroy
    respond_to do |format|
      format.html { redirect_to admin_class_sessions_url, notice: 'Class session was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_class_session
      @admin_class_session = Admin::ClassSession.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_class_session_params
      params.require(:admin_class_session).permit(:title, :start_date, :end_date)
    end
end
