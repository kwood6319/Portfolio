class AddSkillsToProjects < ActiveRecord::Migration[8.1]
  def change
    add_column :projects, :skills, :string, array: true, default: []
  end
end
