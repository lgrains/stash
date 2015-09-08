describe FabricsHelper do
  describe "#treated_show_method" do
    let(:treated) { false }
    let(:fabric) { double(treated?: treated) }

    specify { expect(helper.treated_show_method(fabric)).to eq("Not treated") }

    context "fabric has been treated" do
      let(:treated) { true }

      before do
        allow(fabric).to receive(:treatment_method).and_return("washed and dried")
      end

      specify { expect(helper.treated_show_method(fabric)).to_not eq("Not treated") }
      specify { expect(helper.treated_show_method(fabric)).to eq("Washed and dried") }
    end
  end
end

