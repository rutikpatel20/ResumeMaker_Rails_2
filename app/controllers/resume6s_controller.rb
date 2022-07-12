class Resume6sController < ApplicationController
  before_action :set_resume6_params, only: [:edit, :show, :update, :destroy]

  def index
    @resume6s = Resume6.all
  end

  def new
    @resume6 = Resume6.new
    @skill6s = @resume6.skill6s.build
    @award6s = @resume6.award6s.build
    @knownlang6s = @resume6.knownlang6s.build
    @experience6s = @resume6.experience6s.build
    @education6s = @resume6.education6s.build
  end

  def create
    @resume6 = Resume6.create(resume6_params)
    if @resume6.save
      flash[:errors] = "Resume Build Successfully"
      redirect_to resume6s_path
    else
      flash[:errors] = @resume6.errors.full_messages
      redirect_to new_resume6_path
    end
  end

  def edit
  end

  def show
    @skill6s = @resume6.skill6s
    @award6s = @resume6.award6s
    @knownlang6s = @resume6.knownlang6s
    @education6s = @resume6.education6s
    @experience6s = @resume6.experience6s
  end

  def update
    if @resume6.update(resume6_params)
      flash[:errors] = "Resume Updated Successfully"
      redirect_to resume6_path(@resume6)
    else
      flash[:errors] = @resume6.errors.full_messages
      redirect_to edit_resume6_path
    end
  end

  def destroy
    if @resume6.delete
      flash[:errors] = "Resume Deleted Successfully"
      redirect_to root_path(@resume6)
    else
      flash[:errors] = @resume6.errors.full_messages
      redirect_to destroy_resume6_path
    end
  end

  private

  def set_resume6_params
    @resume6 = Resume6.find(params[:id])
  end

  def resume6_params
    params.require(:resume6).permit(:name, :current_role, :profile_summary, :contact_number, :email, :linkedin_username, skill6s_attributes: [:id, :skill6], award6s_attributes: [:id, :award6], knownlang6s_attributes: [:id, :knownlang6], education6s_attributes: [:id, :degree_title6, :study_organization_name6, :start_year6, :end_year6], experience6s_attributes: [:id, :job_title6, :employer6, :start_date6, :end_date6, :work_description6])
  end
end
