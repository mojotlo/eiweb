# Methods added to this helper will be available to all templates in the application.

module ApplicationHelper
require "time"
  def css_path
    # use :edit and :new css instead of :update and :delete in order to render
    # rather than redirect on errors
    action = action_name
    {"update" => "edit", "create" => "new"}.each do |k,v|
      action = v if action_name.to_s == k
    end
    controller_path = controller.controller_path
    full_path = Rails.root.join( 'public','stylesheets', controller_path, "#{action}.css")
    default_css  = File.join controller_path, 'default'
    local_css = File.join controller_path, action
    return File.exist?(full_path) ? local_css : default_css
  end
  def flash_box

  end 

end
