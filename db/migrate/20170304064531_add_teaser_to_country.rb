class AddTeaserToCountry < ActiveRecord::Migration[5.0]
  def change
    add_column :countries, :teaser, :string
  end
end
