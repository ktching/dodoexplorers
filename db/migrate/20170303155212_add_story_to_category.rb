class AddStoryToCategory < ActiveRecord::Migration[5.0]
  def change
    add_reference :categories, :story, foreign_key: true
  end
end
