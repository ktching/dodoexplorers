ActiveAdmin.register Article do

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
permit_params :title, :teaser, :body, :type_id, :author_id, :bannerimage

  index do
    selectable_column
    id_column
    column :title
    column :teaser
    column :bannerimage
    column :created_at
    column :updated_at
    actions
  end

# Active Admin
form do |f|
    f.inputs do
      f.input :title
      f.input :teaser
      f.input :bannerimage
      f.input :type_id, :as => :select, :collection => Type.all.collect {|type| [type.name, type.id] }
      f.input :body, as: :html_editor
      f.input :author_id, :as => :select, :collection => AdminUser.all.collect {|adminuser| [adminuser.email, adminuser.id] }
    end
    f.actions
  end

end
