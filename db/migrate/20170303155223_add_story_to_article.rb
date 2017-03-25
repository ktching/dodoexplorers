class AddStoryToArticle < ActiveRecord::Migration[5.0]
  def change
    add_reference :articles, :story, foreign_key: true
  end
end
