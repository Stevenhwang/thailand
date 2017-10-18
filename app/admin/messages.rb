ActiveAdmin.register Message do
  menu priority: 8, label: proc{ I18n.t("active_admin.messages") }

  actions :all, except: [:new, :create, :update, :edit]

  index do
    selectable_column
    id_column
    column :name
    column :company
    column :phone
    column :email
    column :created_at
    column :updated_at
    actions
  end
end
