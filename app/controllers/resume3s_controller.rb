class Resume3sController < ApplicationController
  before_action :set_resume3_params, only: [:edit, :show, :update, :destroy]
  before_action :authenticate_user!

  def index
    @resume3s = Resume3.all
  end

  def new
    @resume3 = Resume3.new
    @skill3s = @resume3.skill3s.build
    @award3s = @resume3.award3s.build
    @knownlang3s = @resume3.knownlang3s.build
    @experience3s = @resume3.experience3s.build
    @education3s = @resume3.education3s.build
  end

  def create
    @resume3 = Resume3.create(resume3_params)
    if @resume3.save
      flash[:errors] = "Resume Build Successfully"
      redirect_to resume3_path(@resume3)
    else
      flash[:errors] = @resume3.errors.full_messages
      redirect_to new_resume3_path
    end
  end

  def edit
  end

  def show
    @skill3s = @resume3.skill3s
    @award3s = @resume3.award3s
    @knownlang3s = @resume3.knownlang3s
    @education3s = @resume3.education3s
    @experience3s = @resume3.experience3s
  end

  def update
    if @resume3.update(resume3_params)
      flash[:errors] = "Resume Updated Successfully"
      redirect_to resume3_path(@resume3)
    else
      flash[:errors] = @resume3.errors.full_messages
      redirect_to edit_resume3_path
    end
  end

  def destroy
    if @resume3.delete
      flash[:errors] = "Resume Deleted Successfully"
      redirect_to root_path(@resume3)
    else
      flash[:errors] = @resume3.errors.full_messages
      redirect_to destroy_resume3_path
    end
  end

  private

  def set_resume3_params
    @resume3 = Resume3.friendly.find(params[:id])
  end

  def resume3_params
    params.require(:resume3).permit(:name, :profile_pic, :current_role, :profile_summary, :contact_number, :email, :linkedin_username, skill3s_attributes: [:id, :skill3], award3s_attributes: [:id, :award3], knownlang3s_attributes: [:id, :knownlang3], education3s_attributes: [:id, :degree_title3, :study_organization_name3, :start_year3, :end_year3], experience3s_attributes: [:id, :job_title3, :employer3, :start_date3, :end_date3, :work_description3])
  end
end
