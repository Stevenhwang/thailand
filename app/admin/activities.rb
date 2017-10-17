ActiveAdmin.register Activity do
  menu priority: 7, label: proc{ I18n.t("active_admin.activities") }

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
    f.inputs "精彩活动详情" do
      f.input :title, label: "标题"
      f.input :excerpt, label: "简介"
      f.input :text, label: "内容"
      f.input :images, label: "图片", as: :file, input_html: { multiple: true }
    end
    f.actions
  end
end
