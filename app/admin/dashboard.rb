# frozen_string_literal: true
ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: proc { I18n.t("active_admin.dashboard") }

  content title: proc { I18n.t("active_admin.dashboard") } do
    div class: "blank_slate_container", id: "dashboard_default_message" do
      span class: "blank_slate" do
        span I18n.t("active_admin.dashboard_welcome.welcome")
        small I18n.t("active_admin.dashboard_welcome.call_to_action")
      end
    end

    panel "Welcome to ActiveAdmin" do
      para "This is the main dashboard for the ActiveAdmin demo application."
    end
    
    columns do
      column do
        panel "Recent Authors" do
          table_for Author.order('created_at desc').limit(5) do
            column :name
            column :created_at
          end
        end
      end
    
      column do
        panel "Recent Books" do
          table_for Book.order('created_at desc').limit(5) do
            column :title
            column :author
            column :created_at
          end
        end
      end
    end

  end # content
end
