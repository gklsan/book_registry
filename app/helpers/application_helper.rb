module ApplicationHelper
  def format_flash_message(flash)
    flash.each do |f|
      type = f[0].to_s.gsub('alert', 'danger').gsub('notice', 'success')
      return "<div class='alert alert-#{type} alert-dismissible'>
             <button type='button' class='close' data-dismiss='alert'>&times;</button>#{f[1]}</div>"
    end
  end
end
