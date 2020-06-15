module ApplicationHelper
  def flash_notice(flash)
    capture do
      flash.each do |message_type, message| 
        if %w[error alert].include?(message_type)
          message_icon = "⚠️"
          message_type = "danger"
        end 
        message_type = "success" if %w[notice].include?(message_type)

        msg = safe_join([message_icon, message], " ")
        concat(content_tag(:div, msg, class: "notification is-#{message_type}"))
      end 
    end
  end
end
