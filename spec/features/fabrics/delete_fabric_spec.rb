require 'spec_helper'

describe "Deleting a fabric" do
  it "destroys the fabric and shows the fabric listing without the deleted fabric" do
    fabric = Fabric.create(fabric_attributes)

    visit fabric_path(fabric)

    click_link 'Delete'

    expect(current_path).to eq(fabrics_path)
    expect(page).not_to have_text(fabric.name)
  end
end
