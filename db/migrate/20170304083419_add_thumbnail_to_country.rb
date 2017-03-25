class AddThumbnailToCountry < ActiveRecord::Migration[5.0]
  def change
    add_column :countries, :thumbnail, :string
  end
end
