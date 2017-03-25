class CreateBlogexperiences < ActiveRecord::Migration[5.0]
  def change
    create_table :blogexperiences do |t|
      t.references :blog, foreign_key: true
      t.references :experience, foreign_key: true

      t.timestamps
    end
  end
end
