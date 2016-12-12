require "rails_helper"

RSpec.describe ImportFromFileWorker do
  describe '#perform' do
    let(:data_file) { create(:data_file) }

    before :each do
      ImportFromFileWorker.perform_async(data_file.id)
      data_file.reload
    end

    it 'should set data_file status to success' do
      expect(data_file.success?).to be_truthy
    end

    it 'should create inputs' do
      expect(data_file.inputs.present?).to be_truthy
    end
  end
end
