class PagesController < ApplicationController
  before_action :set_project, only: %i[ show edit update destroy ]
  
  def index
    if user_signed_in?
      @project_sidebar = current_user.projects.all.order("created_at ASC")
    end
  end

  def people
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end
end
