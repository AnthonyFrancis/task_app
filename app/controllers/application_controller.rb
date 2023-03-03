class ApplicationController < ActionController::Base
	# def after_sign_in_path_for(resource)
	# 	project_path(current_user.projects.first.id)
	# end


	def after_sign_in_path_for(resource)
		user = current_user
		if user
		  last_viewed_project_id = user.last_viewed_project_id
		  if last_viewed_project_id
		    project = resource.projects.find_by(id: last_viewed_project_id)
		    if project
		      project_path(project)
		    else
		      project_path(current_user.projects.first.id)
		    end
		  else
		    project_path(current_user.projects.first.id)
		  end
		else
		  super
		end
	end
end
