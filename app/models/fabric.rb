class Fabric < ActiveRecord::Base
  def name
    "#{color} #{pattern} #{fabric_type}".titleize
  end

  def treated?
    !!treated
  end
end
