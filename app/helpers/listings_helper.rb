module ListingsHelper
  def treated_show_method(listing)
    if listing.treated?
      listing.treatment_method.capitalize
     else
       "Not treated"
     end
  end
end
