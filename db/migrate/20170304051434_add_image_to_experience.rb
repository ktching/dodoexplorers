class AddImageToExperience < ActiveRecord::Migration[5.0]
  def change
    add_column :experiences, :image, :string
  end
end
