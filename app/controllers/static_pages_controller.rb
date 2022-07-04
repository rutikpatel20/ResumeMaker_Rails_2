class StaticPagesController < ApplicationController
  before_action :authenticate_user!, only: [:profile]

  def pricing
  end

  def profile
  end
end
