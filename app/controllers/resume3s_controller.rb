class Resume3sController < ApplicationController
  before_action :set_resume3_params, only: [:edit, :show, :update, :destroy]

  def index
    @resume3s = Resume3.all
  end

  def new
    @resume3 = Resume3.new
  end

  def create
    @resume3 = Resume3.create(resume3_params)
    if @resume3.save
      flash[:errors] = "Resume Build Successfully"
      redirect_to resume3s_path
    else
      flash[:errors] = @resume3.errors.full_messages
      redirect_to new_resume3_path
    end
  end

  def edit
  end

  def show
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
    @resume3 = Resume3.find(params[:id])
  end

  def resume3_params
    params.require(:resume3).permit(:name, :profile_pic, :current_role, :profile_summary, :contact_number, :email, :linkedin_username, :skill, :award, :experience, :education, :known_language)
  end
end
