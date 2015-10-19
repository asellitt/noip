require 'spec_helper'

describe Noip do
  describe '.update' do
    let(:updater) { instance_double(Noip::Updater) }
    before do
      allow(updater).to receive(:update)
      allow(Noip::Updater).to receive(:new).and_return(updater)
    end

    subject(:update) { Noip.update }
    before { update }

    it 'pushes a new update to noip' do
      expect(updater).to have_received(:update)
    end
  end
end
