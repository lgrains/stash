module FabricsHelper
  def treated_show_method(fabric)
    if fabric.treated?
      fabric.treatment_method.capitalize
    else
      "Not treated"
    end
  end

  def image_for(fabric)
    if fabric.image_file_name.blank?
      image_tag("placeholder.png")
    else
      image_tag(fabric.image_file_name, size: "200x200")
    end
  end
end
