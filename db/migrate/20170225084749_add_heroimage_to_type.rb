class AddHeroimageToType < ActiveRecord::Migration[5.0]
  def change
    add_column :types, :image, :string
  end
end
