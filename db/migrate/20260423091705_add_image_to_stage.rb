class AddImageToStage < ActiveRecord::Migration[8.1]
  def change
    add_column :stages, :image, :string
  end
end
