describe "Editing a fabric" do

  it "updates the fabric and shows the fabric's updated details" do
    fabric = Fabric.create(fabric_attributes)

    visit fabric_url(fabric)

    click_link 'Edit'

    expect(current_path).to eq(edit_fabric_path(fabric))

    expect(find_field("Fabric type").value).to eq(fabric.fabric_type)
    expect(find_field("Color").value).to eq(fabric.color)
    expect(find_field("Pattern").value).to eq(fabric.pattern)

    fill_in "Color", with: "chartreuse"
    fill_in "Offered on", with: (Time.now - 15.days).to_s

    click_button "Update Fabric"

    expect(current_path).to eq(fabric_path(fabric))
    expect(page).to have_text("Chartreuse")
    expect(page).to have_text("Time on site: 15 days")
  end
end
