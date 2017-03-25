class CreateBlogcountries < ActiveRecord::Migration[5.0]
  def change
    create_table :blogcountries do |t|
      t.references :blog, foreign_key: true
      t.references :country, foreign_key: true

      t.timestamps
    end
  end
end
