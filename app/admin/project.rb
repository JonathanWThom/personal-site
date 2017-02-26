ActiveAdmin.register Project do

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

form :html => { :enctype => "multipart/form-data" } do |f|
  f.inputs do
    f.input :title
    f.input :description
    f.input :collaborators
    f.input :github
    f.input :deployed
    f.input :tech
    f.input :image, hint: f.project.image? ? image_tag(f.item.photo.url, height: '100') : content_tag(:span, "Upload JPG/PNG/GIF image")
  end
  f.actions
  end
end
