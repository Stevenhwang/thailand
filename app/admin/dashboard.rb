ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do

    columns do
      column do
        panel "最近留言的客户" do
          ul do
            Message.last(10).map do |msg|
              li link_to(msg.name, admin_message_path(msg))
            end
          end
        end
      end

      column do
        panel "最近留言的内容" do
          ul do
            Message.last(10).map do |msg|
              li link_to(msg.text, admin_message_path(msg))
            end
          end
        end
      end
    end
  end
end
