class Listing < ActiveRecord::Base
  def name
    "#{color} #{pattern} #{fabric}".titleize
  end

  def treated?
    !!treated
  end
end
