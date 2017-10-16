ActiveAdmin.register Food do
  menu priority: 6, label: proc{ I18n.t("active_admin.foods") }
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
  permit_params :title, :text, :excerpt, {images: []}

  index do
    selectable_column
    id_column
    column :title
    column :created_at
    column :updated_at
    actions
  end

  form html: { multipart: true } do |f|
    f.inputs "美食购物详情" do
      f.input :title, label: "标题"
      f.input :excerpt, label: "简介"
      f.input :text, label: "内容"
      f.input :images, label: "图片", as: :file, input_html: { multiple: true }
    end
    f.actions
  end
end
