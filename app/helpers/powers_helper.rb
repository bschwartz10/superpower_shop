module PowersHelper
  
  def power_active(power)
    if power.status == "active"
      button_to "Add to Briefcase", briefcases_path(power_id: power.id), class: "btn btn-info"
    else
      "<h3>Item Retired</h3>".html_safe
    end
  end
  
end