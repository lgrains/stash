module FabricsHelper
  def treated_show_method(fabric)
    if fabric.treated?
      fabric.treatment_method.capitalize
    else
      "Not treated"
    end
  end
end
