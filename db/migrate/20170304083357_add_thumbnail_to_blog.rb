class AddThumbnailToBlog < ActiveRecord::Migration[5.0]
  def change
    add_column :blogs, :thumbnail, :string
  end
end
