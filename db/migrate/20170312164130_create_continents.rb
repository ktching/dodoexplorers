class CreateContinents < ActiveRecord::Migration[5.0]
  def change
    create_table :continents do |t|
      t.string :name

      t.timestamps
    end
  end
end
