class AddImageToCountry < ActiveRecord::Migration[5.0]
  def change
    add_column :countries, :image, :string
  end
end
