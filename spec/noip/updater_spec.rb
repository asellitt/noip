require 'spec_helper'

describe Noip::Updater do
  describe '#update' do
    let(:agent) do
      instance_double(Noip::Agent,
        :user_agent => 'porkchop/vsammiches gi@jo.e',
      )
    end
    before { allow(Noip::Agent).to receive(:new).and_return(agent) }

    let(:remote_ip) do
      instance_double(Noip::RemoteIp,
        :address => '1.2.3.4',
      )
    end
    before { allow(Noip::RemoteIp).to receive(:new).and_return(remote_ip) }

    let(:http) { instance_double(Net::HTTP) }
    before do
      allow(http).to receive(:request)
      allow(Net::HTTP).to receive(:new).and_return(http)
    end

    let(:request) { instance_double(Net::HTTP::Get) }
    before do
      allow(request).to receive(:basic_auth)
      allow(Net::HTTP::Get).to receive(:new).and_return(request)
    end

    let(:credentials) do
      instance_double(Noip::Credentials,
        :username => 'username',
        :password => 'password',
        :host => 'host',
      )
    end

    subject(:update) { Noip::Updater.new(credentials).update }
    before { update }

    it 'requests the correct domain' do
      expect(Net::HTTP).to have_received(:new).with(
        'dynupdate.no-ip.com'
      )
    end

    it 'sets the correct path, with host and address and user agent information' do
      expect(Net::HTTP::Get).to have_received(:new).with(
        '/nic/update?hostname=host&ip=1.2.3.4',
        { 'User-Agent' => 'porkchop/vsammiches gi@jo.e' }
      )
    end

    it 'sets up the request to use basic authentication' do
      expect(request).to have_received(:basic_auth).with(
        'username',
        'password'
      )
    end

    it 'makes the request to update the dynamic dns record' do
      expect(http).to have_received(:request).with(
        request
      )
    end
  end
end
