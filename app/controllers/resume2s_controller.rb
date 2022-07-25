class Resume2sController < ApplicationController
  before_action :set_resume2_params, only: [:edit, :show, :update, :destroy]
  before_action :authenticate_user!

  def index
    @resume2s = Resume2.all
  end

  def new
    @resume2 = Resume2.new
    @programminglang2s = @resume2.programminglang2s.build
    @skill2s = @resume2.skill2s.build
    @hobby2s = @resume2.hobby2s.build
    @education2s = @resume2.education2s.build
    @experience2s = @resume2.experience2s.build
  end

  def create
    @resume2 = Resume2.create(resume2_params)
    if @resume2.save
      flash[:notice] = "Resume Build Successfully"
      redirect_to resume2_path(@resume2)
    else
      flash[:errors] = @resume2.errors.full_messages
      redirect_to new_resume2_path
    end
  end

  def edit
  end

  def show
    @programminglang2s = @resume2.programminglang2s
    @skill2s = @resume2.skill2s
    @hobby2s = @resume2.hobby2s
    @education2s = @resume2.education2s
    @experience2s = @resume2.experience2s
  end

  def update
    if @resume2.update(resume2_params)
      flash[:notice] = "Resume Updated Successfully"
      redirect_to resume2_path(@resume2)
    else
      flash[:errors] = @resume2.errors.full_messages
      redirect_to edit_resume2_path
    end
  end

  def destroy
    if @resume2.delete
      flash[:notice] = "Resume Deleted Successfully"
      redirect_to root_path(@resume2)
    else
      flash[:errors] = @resume2.errors.full_messages
      redirect_to destroy_resume2_path
    end
  end

  private

  def set_resume2_params
    @resume2 = Resume2.friendly.find(params[:id])
  end

  def resume2_params
    params.require(:resume2).permit(:name, :profile_pic, :current_role, :profile_summary, :contact_number, :email, :linkedin_username, programminglang2s_attributes: [:id, :programminglang2], skill2s_attributes: [:id, :skill2], hobby2s_attributes: [:id, :hobby2], education2s_attributes: [:id, :degree_title2, :study_organization_name2, :start_year2, :end_year2], experience2s_attributes: [:id, :job_title2, :employer2, :start_date2, :end_date2, :work_description2])
  end
end
