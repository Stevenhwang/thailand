ActiveAdmin.register Travel do
  menu priority: 3, label: proc{ I18n.t("active_admin.travels") }
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
  permit_params :title, :price, :date, :departure, :destination, :introduction, :notice, :instruction

  index do
    selectable_column
    id_column
    column :title
    column :price
    column :date
    column :departure
    column :destination
    column :created_at
    column :updated_at
    actions
  end

  form do |f|
    f.inputs "特色旅游详情" do
      f.input :title, label: "标题"
      f.input :price, label: "价格"
      f.input :date, label: "出发时间"
      f.input :departure, label: "出发地"
      f.input :destination, label: "目的地"
      f.input :introduction, label: "行程介绍"
      f.input :notice, label: "预定须知"
      f.input :instruction, label: "签证说明"
    end
    f.actions
  end
end
