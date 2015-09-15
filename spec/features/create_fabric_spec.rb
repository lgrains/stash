describe "Creating a new fabric" do
  it "saves the fabric and shows the new fabric's details" do
    Timecop.freeze
    visit fabrics_url

    click_link 'Add new fabric'

    expect(current_path).to eq(new_fabric_path)

    fill_in "Fabric type", with: "cotton"
    fill_in "Color", with: "red"
    fill_in "Pattern", with: "bricks"
    fill_in "Length", with: 22.0
    fill_in "Width", with: 18.0
    fill_in "Price", with: 3.5
    fill_in "Description", with: "Bricks fabric perfect for creating a house or walkway"
    # you'll need to use 'fill_in' rather than 'select'
    fill_in "Offered on", with: (Time.now - 1.week).to_s

    click_button 'Create Fabric'

    expect(current_path).to eq(fabric_path(Fabric.last))

    expect(page).to have_text("Red Bricks Cotton")
    expect(page).to have_text("Time on site: 7 days")
  end
end

