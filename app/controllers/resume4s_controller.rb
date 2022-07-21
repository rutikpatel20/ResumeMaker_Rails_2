class Resume4sController < ApplicationController
  before_action :set_resume4_params, only: [:edit, :show, :update, :destroy]
  before_action :authenticate_user!

  def index
    @resume4s = Resume4.all
  end

  def new
    @resume4 = Resume4.new
    @skill4s = @resume4.skill4s.build
    @award4s = @resume4.award4s.build
    @knownlang4s = @resume4.knownlang4s.build
    @experience4s = @resume4.experience4s.build
    @education4s = @resume4.education4s.build
  end

  def create
    @resume4 = Resume4.create(resume4_params)
    if @resume4.save
      flash[:errors] = "Resume Build Successfully"
      redirect_to resume4s_path
    else
      flash[:errors] = @resume4.errors.full_messages
      redirect_to new_resume4_path
    end
  end

  def edit
  end

  def show
    @skill4s = @resume4.skill4s
    @award4s = @resume4.award4s
    @knownlang4s = @resume4.knownlang4s
    @education4s = @resume4.education4s
    @experience4s = @resume4.experience4s
  end

  def update
    if @resume4.update(resume4_params)
      flash[:errors] = "Resume Updated Successfully"
      redirect_to resume4_path(@resume4)
    else
      flash[:errors] = @resume4.errors.full_messages
      redirect_to edit_resume4_path
    end
  end

  def destroy
    if @resume4.delete
      flash[:errors] = "Resume Deleted Successfully"
      redirect_to root_path(@resume4)
    else
      flash[:errors] = @resume4.errors.full_messages
      redirect_to destroy_resume4_path
    end
  end

  private

  def set_resume4_params
    @resume4 = Resume4.find(params[:id])
  end

  def resume4_params
    params.require(:resume4).permit(:name, :profile_pic, :current_role, :profile_summary, :contact_number, :email, :linkedin_username, skill4s_attributes: [:id, :skill4], award4s_attributes: [:id, :award4], knownlang4s_attributes: [:id, :knownlang4], education4s_attributes: [:id, :degree_title4, :study_organization_name4, :start_year4, :end_year4], experience4s_attributes: [:id, :job_title4, :employer4, :start_date4, :end_date4, :work_description4])
  end
end
