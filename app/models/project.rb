class Project < ApplicationRecord
	belongs_to :user
	has_many :subprojects, dependent: :delete_all
end
