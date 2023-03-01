class PagesController < ApplicationController
  before_action :set_project, only: %i[ show edit update destroy ]
  
  def index
    @project_sidebar = Project.all
  end

  def people
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end
end
