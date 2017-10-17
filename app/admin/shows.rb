ActiveAdmin.register Show do
  menu priority: 5, label: proc{ I18n.t("active_admin.shows") }

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
    f.inputs "泰国表演详情" do
      f.input :title, label: "标题"
      f.input :excerpt, label: "简介"
      f.input :text, label: "内容"
      f.input :images, label: "图片", as: :file, input_html: { multiple: true }
    end
    f.actions
  end
end
