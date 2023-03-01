class AddProjectRelationToSubprojects < ActiveRecord::Migration[7.0]
  def change
    add_reference :subprojects, :project, foreign_key: true
  end
end