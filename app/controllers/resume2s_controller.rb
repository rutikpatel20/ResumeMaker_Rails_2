class Resume2sController < ApplicationController
  before_action :set_resume2_params, only: [:edit, :show, :update, :destroy]

  def index
    @resume2s = Resume2.all
  end

  def new
    @resume2 = Resume2.new
  end

  def create
    @resume2 = Resume2.create(resume2_params)
    if @resume2.save
      flash[:errors] = "Resume2 Build Successfully"
      redirect_to resume2s_path
    else
      flash[:errors] = @resume2.errors.full_messages
      redirect_to new_resume2_path
    end
  end

  def edit
  end

  def show
  end

  def update
    if @resume2.update(resume2_params)
      flash[:errors] = "Resume2 Updated Successfully"
      redirect_to resume2_path(@resume2)
    else
      flash[:errors] = @resume2.errors.full_messages
      redirect_to edit_resume2_path
    end
  end

  def destroy
    if @resume2.delete
      flash[:errors] = "esume2 Deleted Successfully"
      redirect_to root_path(@resume2)
    else
      flash[:errors] = @resume2.errors.full_messages
      redirect_to destroy_resume2_path
    end
  end

  private

  def set_resume2_params
    @resume2 = Resume2.find(params[:id])
  end

  def resume2_params
    params.require(:resume2).permit(:name, :profile_pic, :current_role, :profile_summary, :contact_number, :email, :linkedin_username, :programming_language, :skills, :hobbies, :education, :experiences)
  end
end