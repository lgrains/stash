describe "show a single fabric" do
  it  "shows details of the fabric" do
    fabric1 = Fabric.create(fabric_type: "cotton",
      color: "navy blue",
      pattern: "solid",
      length: 18,
      width: 22,
      price: 3,
      offered_on: 9.days.ago
    )

    visit fabric_path(fabric1.id)

    expect(page).to have_content("navy blue solid cotton".titleize)
    expect(page).to have_content("18.0 inches long")
    expect(page).to have_content("22.0 inches wide")
    expect(page).to have_content("$3.00")
  end
end
