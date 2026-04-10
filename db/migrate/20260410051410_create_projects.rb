class CreateProjects < ActiveRecord::Migration[8.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :description
      t.string :link

      t.timestamps
    end
  end
end
