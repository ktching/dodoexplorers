ActiveAdmin.register Blog do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
permit_params :title, :teaser, :body, :banner_image, :thumbnail, :slug, experience_ids: [], country_ids: []

  controller do
    def find_resource
      scoped_collection.friendly.find(params[:id])
    end
  end

  index do
    selectable_column
    id_column
    #column :banner_image
    #column :thumbnail
    column :title
    column :teaser
    actions
  end

# Active Admin
form do |f|
    f.inputs do
      f.input :title
      f.input :teaser
      f.input :banner_image
      f.input :thumbnail
      f.input :experiences, :as => :check_boxes, :collection => Experience.all.collect {|experience| [experience.name, experience.id] }
      f.input :countries, :as => :check_boxes, :collection => Country.all.collect {|country| [country.name, country.id] }
      f.input :body, as: :html_editor    
      f.input :slug
    end
    f.actions
  end

end
