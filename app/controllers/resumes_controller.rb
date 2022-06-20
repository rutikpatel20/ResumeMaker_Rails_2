class ResumesController < ApplicationController
  before_action :set_resume_params, only: [:edit, :show, :update, :destroy]

  def index
    @resumes = Resume.all
  end

  def new
    @resume = Resume.new
  end

  def create
    @resume = Resume.create(resume_params)
    if @resume.save
      flash[:errors] = "Resume Build Successfully"
      redirect_to resumes_path
    else
      flash[:errors] = @resume.errors.full_messages
      redirect_to new_resume_path
    end
  end

  def edit
  end

  def show
  end

  def update
    if @resume.update(resume_params)
      flash[:errors] = "Resume Updated Successfully"
      redirect_to resume_path(@resume)
    else
      flash[:errors] = @resume.errors.full_messages
      redirect_to edit_resume_path
    end
  end

  def destroy
    if @resume.delete
      flash[:errors] = "Resume Deleted Successfully"
      redirect_to root_path(@resume)
    else
      flash[:errors] = @resume.errors.full_messages
      redirect_to destroy_resume_path
    end
  end

  private

  def set_resume_params
    @resume = Resume.friendly.find(params[:id])
  end

  def resume_params
    params.require(:resume).permit(:name, :profile_pic, :current_role, :address_line_1, :address_line_2, :address_line_3, :email, :social_media_1, :social_media_2, :social_media_3, :expertise_1, :expertise_2, :expertise_3, :expertise_4, :degree_1, :college_1, :degree_2, :college_2, :hobby_1, :hobby_2, :hobby_3, :profile_summary, :pr_job_title_1, :pr_job_role_1, :pr_job_description_1, :pr_job_title_2, :pr_job_role_2, :pr_job_description_2, :pr_job_title_3, :pr_job_role_3, :pr_job_description_3)
  end
end
