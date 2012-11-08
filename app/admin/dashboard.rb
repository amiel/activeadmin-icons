ActiveAdmin.register_page "Dashboard" do

  menu :priority => 1, :label => proc{ I18n.t("active_admin.dashboard") }

  content :title => 'ActiveAdmin Icons' do
    div do
      ActiveAdmin::Iconic::ICONS.each do |key, _|
        div style: "float: left; width: 12em; padding: 2px 3px; font-size: 1.6em; line-height: 1.2em;" do
          "#{icon(key)} #{key}".html_safe
        end
      end
    end
  end
end
