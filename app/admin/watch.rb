ActiveAdmin.register Watch do
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
  permit_params :title, :short_description, :long_description, :price, :collection_id, product_images_attributes: [:product_id, :image]

  form do |f|
    f.semantic_errors # shows errors on :base
    f.inputs          # builds an input field for every attribute
    f.inputs do
      f.has_many :product_images  do |p|
        p.input :image , as: :file, hint: p.object.image.present? ? image_tag(p.object.image.url(:thumb)) : content_tag(:span, "no image yet")
      end
    end
    f.actions         # adds the 'Submit' and 'Cancel' buttons
  end
end
