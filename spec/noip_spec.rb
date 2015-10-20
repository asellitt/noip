require 'spec_helper'

describe Noip do
  describe '.update' do
    let(:credentials) { instance_double(Noip::Credentials) }
    before { allow(Noip::Credentials).to receive(:new).and_return(credentials) }

    let(:updater) { instance_double(Noip::Updater) }
    before do
      allow(updater).to receive(:update)
      allow(Noip::Updater).to receive(:new).and_return(updater)
    end

    subject(:update) { Noip.update('username', 'password', 'host') }
    before { update }

    it 'properly constructs the credentials' do
      expect(Noip::Credentials).to have_received(:new).with('username', 'password', 'host')
    end

    it 'provides the updater with the correct credentials' do
      expect(Noip::Updater).to have_received(:new).with(credentials)
    end

    it 'pushes a new update to noip' do
      expect(updater).to have_received(:update)
    end
  end
end
