require 'spec_helper'

describe Noip::RemoteIp do
  describe '#address' do
    let(:ip_address) { '12.34.56.78' }

    before do
      allow(Net::HTTP).to receive(:get).and_return(ip_address)
    end

    subject(:address) { Noip::RemoteIp.new.address }

    it { is_expected.to eq '12.34.56.78' }

    it 'resolves the ip via akamai' do
      address
      expect(Net::HTTP).to have_received(:get).with(URI('http://whatismyip.akamai.com'))
    end
  end
end
