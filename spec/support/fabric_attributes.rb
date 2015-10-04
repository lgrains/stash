  def fabric_attributes(overrides = {})
  {
    fabric_type: "cotton",
    color: "forest green",
    pattern: "white stars on green background",
    length: "18",
    width: "22",
    price: 3.0,
    treated: true,
    treatment_method: "washed and dried",
    offered_on: "2015-02-02"
  }.merge(overrides)
end

def user_attributes(overrides = {})
  {
    name: "Barbara",
    email: "barbara@example.com",
    password: "p@ssw0rd"
  }
end

