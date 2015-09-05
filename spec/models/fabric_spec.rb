describe Fabric do
  describe "#name" do
    let(:treated) { false }
    let(:treatment_method) { nil }

    subject { Fabric.new(fabric_type: "cotton", color: "orange", pattern: "flowered", treated: treated, treatment_method: treatment_method) }

    its(:name) { should eq("orange flowered cotton".titleize) }
    its(:treated?) { should eq(false) }
    its(:treatment_method) { should be_nil }

    context "it has been treated" do
      let(:treated) { true }
      let(:treatment_method) { "washed and dried" }

      its(:treated?) { should eq(true) }
    end
  end
end
