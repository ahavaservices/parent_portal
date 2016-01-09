class ProfilesController < ApplicationController
	before_action :authenticate_user!
	before_action :set_profile
	def edit

	end

	def update
		respond_to do |format|
			if @profile.update(profile_params)
				current_user.update(:is_profile => true)
				format.html { redirect_to '/students', notice: 'Profile was successfully updated.' }
			else
				format.html { render :edit }
			end
		end
	end

	private
	# Use callbacks to share common setup or constraints between actions.
	def set_profile
		@profile = current_user.profile
	end

	# Never trust parameters from the scary internet, only allow the white list through.
    def profile_params
      params.require(:profile).permit(:first_name, :last_name, :phone, :emergency_contact_name, :emergency_contact_no)
    end
end
