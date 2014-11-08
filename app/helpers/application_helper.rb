module ApplicationHelper

  def external_link(link)
    link_to "#{link}", "#{link}"
  end
end
