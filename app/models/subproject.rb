class Subproject < ApplicationRecord
	belongs_to :project, dependent: :delete_all
end
