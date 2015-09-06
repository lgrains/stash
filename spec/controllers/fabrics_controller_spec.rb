RSpec.describe FabricsController do
  describe '#show' do
    let(:fabric) { double }

    before do
      allow(Fabric).to receive(:find).with("10").and_return(fabric)
      get :show, id: "10"
    end

    it { should respond_with(:success) }
  end

  describe "#index" do
    before do
      get :index
    end

    it { should respond_with(:success) }
    it { should render_template(:index) }
  end
end
