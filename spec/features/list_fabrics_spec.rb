describe "view the fabrics" do
  it "shows all fabrics" do
    fabric1 = Fabric.create(fabric_type: "cotton",
      color: "navy blue",
      pattern: "solid",
      length: 18,
      width: 22,
      price: 3,
      offered_on: 5.days.ago
    )

    fabric2 = Fabric.create(fabric_type: "cotton",
      color: "white on white",
      pattern: "snowflakes",
      length: 36,
      width: 42,
      price: 12.95,
      offered_on: 10.days.ago
    )

    visit fabrics_path

    expect(page).to have_content("2 Fabrics")
    expect(page).to have_content("navy blue solid cotton".titleize)
    expect(page).to have_content("white on white snowflakes cotton".titleize)

    expect(page).to have_content("18.0 inches long")
    expect(page).to have_content("22.0 inches wide")
    expect(page).to have_content("$3.00")
  end
end
