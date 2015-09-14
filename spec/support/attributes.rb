def fabric_attributes(overrides = {})
{
  fabric_type: "cotton",
  color: "purple",
  pattern: "galaxy swirls",
  length: 108.0,
  width: 42.0,
  price: 24.50,
  offered_on: 3.days.ago
}.merge(overrides)
end
