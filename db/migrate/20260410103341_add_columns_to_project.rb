class AddColumnsToProject < ActiveRecord::Migration[8.1]
  def change
    add_column :projects, :team_size, :integer, default: 1
    add_column :projects, :role, :string
  end
end
