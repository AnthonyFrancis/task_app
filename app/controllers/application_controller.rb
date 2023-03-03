class ApplicationController < ActionController::Base
	def after_sign_in_path_for(resource)
		project_path(current_user.projects.first.id)
	end
end
