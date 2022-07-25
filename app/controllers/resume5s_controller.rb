class Resume5sController < ApplicationController
  before_action :set_resume5_params, only: [:edit, :show, :update, :destroy]
  before_action :authenticate_user!

  def index
    @resume5s = Resume5.all
  end

  def new
    @resume5 = Resume5.new
    @skill5s = @resume5.skill5s.build
    @award5s = @resume5.award5s.build
    @knownlang5s = @resume5.knownlang5s.build
    @experience5s = @resume5.experience5s.build
    @education5s = @resume5.education5s.build
  end

  def create
    @resume5 = Resume5.create(resume5_params)
    if @resume5.save
      flash[:notice] = "Resume Build Successfully"
      redirect_to resume5_path(@resume5)
    else
      flash[:errors] = @resume5.errors.full_messages
      redirect_to new_resume5_path
    end
  end

  def edit
  end

  def show
    @skill5s = @resume5.skill5s
    @award5s = @resume5.award5s
    @knownlang5s = @resume5.knownlang5s
    @education5s = @resume5.education5s
    @experience5s = @resume5.experience5s
  end

  def update
    if @resume5.update(resume5_params)
      flash[:notice] = "Resume Updated Successfully"
      redirect_to resume5_path(@resume5)
    else
      flash[:errors] = @resume5.errors.full_messages
      redirect_to edit_resume5_path
    end
  end

  def destroy
    if @resume5.delete
      flash[:notice] = "Resume Deleted Successfully"
      redirect_to root_path(@resume5)
    else
      flash[:errors] = @resume5.errors.full_messages
      redirect_to destroy_resume5_path
    end
  end

  private

  def set_resume5_params
    @resume5 = Resume5.friendly.find(params[:id])
  end

  def resume5_params
    params.require(:resume5).permit(:name, :current_role, :profile_summary, :contact_number, :email, :linkedin_username, skill5s_attributes: [:id, :skill5], award5s_attributes: [:id, :award5], knownlang5s_attributes: [:id, :knownlang5], education5s_attributes: [:id, :degree_title5, :study_organization_name5, :start_year5, :end_year5], experience5s_attributes: [:id, :job_title5, :employer5, :start_date5, :end_date5, :work_description5])
  end
end
