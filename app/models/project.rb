class Project < ApplicationRecord
	belongs_to :user
	has_many :subprojects, dependent: :destroy
end
