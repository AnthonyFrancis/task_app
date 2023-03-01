class CreateSubprojects < ActiveRecord::Migration[7.0]
  def change
    create_table :subprojects do |t|
      t.string :subproject_name

      t.timestamps
    end
  end
end
