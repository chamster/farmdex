module ApplicationHelper

def boolean_yn(boolean)
    boolean ? 'Yes' : 'No'
end

def boolean_x(boolean)
    boolean ? 'X' : ''
end

# Returns the full title on a per-page basis.
  def full_title(page_title)
    base_title = "BreedWare"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end

end
