module ApplicationHelper
  def flash_class(level)
    case level
      when 'notice' then "alert alert-info fade in"
      when 'success' then "alert alert-success fade in"
      when 'error' then "alert alert-danger fade in"
      when 'alert' then "alert alert-danger fade in"
    end
  end
end
