class AddImageLinkToProject < ActiveRecord::Migration[8.1]
  def change
    add_column :projects, :image, :string
  end
end
