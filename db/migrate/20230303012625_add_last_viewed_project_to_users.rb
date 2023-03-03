class AddLastViewedProjectToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :last_viewed_project_id, :integer
  end
end
