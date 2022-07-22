class ResumesController < ApplicationController
  before_action :set_resume_params, only: [:edit, :show, :update, :destroy]
  before_action :authenticate_user!

  def index
    @resumes = Resume.all
  end

  def new
    @resume = Resume.new
    @expertises = @resume.expertises.build
    @hobbies = @resume.hobbies.build
    @educations = @resume.educations.build
    @experiences = @resume.experiences.build
  end

  def create
    @resume = Resume.create(resume_params)
    if @resume.save
      flash[:errors] = "Resume Build Successfully"
      redirect_to resume_path(@resume)
    else
      flash[:errors] = @resume.errors.full_messages
      redirect_to new_resume_path
    end
  end

  def edit
  end

  def show
    @expertises = @resume.expertises
    @hobbies = @resume.hobbies
    @educations = @resume.educations
    @experiences = @resume.experiences
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
      redirect_to resumes_path
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
    params.require(:resume).permit(:name, :profile_pic, :current_role, :address_line_1, :address_line_2, :address_line_3, :email, :social_media_1, :social_media_2, :social_media_3, :degree_1, :college_1, :degree_2, :college_2, :hobby_1, :hobby_2, :hobby_3, :profile_summary, expertises_attributes: [:id, :expertise], hobbies_attributes: [:id, :hobby_name], educations_attributes: [:id, :degree_title, :study_organization_name], experiences_attributes: [:id, :job_title, :employer, :start_date, :end_date, :job_description])
  end
end
