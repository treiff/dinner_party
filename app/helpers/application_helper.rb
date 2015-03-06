module ApplicationHelper
  # Helper method to display full title on each page
  def full_title(page_title)
    base_title = "Dinner Party"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end
end
