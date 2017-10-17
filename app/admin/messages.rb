ActiveAdmin.register Message do
  menu priority: 8, label: proc{ I18n.t("active_admin.messages") }

  actions :all, except: [:new, :create, :update, :edit]
end
