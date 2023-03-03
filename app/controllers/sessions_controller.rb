class SessionsController < Devise::SessionsController
  before_action :set_last_viewed_project_id, only: [:destroy]

  private

  def set_last_viewed_project_id
    # Set the last viewed project ID on the user
    current_user.update(last_viewed_project_id: session[:last_viewed_project_id])
  end
end