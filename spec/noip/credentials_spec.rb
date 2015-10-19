require 'spec_helper'

describe Noip::Credentials do
  context 'with ENV variables set' do
    before do
      allow(ENV).to receive(:[]).with('NOIP_USERNAME').and_return('env_noip_username')
      allow(ENV).to receive(:[]).with('NOIP_PASSWORD').and_return('env_noip_password')
      allow(ENV).to receive(:[]).with('NOIP_HOST').and_return('env_noip_host')
    end

    describe 'username' do
      subject(:username) { Noip::Credentials.new(username, password, host).username }

      context 'with values provided' do
        let(:username) { 'provided_username'}
        let(:password) { 'provided_password'}
        let(:host)     { 'provided_host'}

        it { is_expected.to eq 'provided_username' }
      end

      context 'with no values provided' do
        let(:username) { nil }
        let(:password) { nil }
        let(:host)     { nil }

        it { is_expected.to eq 'env_noip_username' }
      end
    end

    describe 'password' do
      subject(:password) { Noip::Credentials.new(username, password, host).password }

      context 'with values provided' do
        let(:username) { 'provided_username'}
        let(:password) { 'provided_password'}
        let(:host)     { 'provided_host'}

        it { is_expected.to eq 'provided_password' }
      end

      context 'with no values provided' do
        let(:username) { nil }
        let(:password) { nil }
        let(:host)     { nil }

        it { is_expected.to eq 'env_noip_password' }
      end
    end

    describe 'host' do
      subject(:host) { Noip::Credentials.new(username, password, host).host }

      context 'with values provided' do
        let(:username) { 'provided_username'}
        let(:password) { 'provided_password'}
        let(:host)     { 'provided_host'}

        it { is_expected.to eq 'provided_host' }
      end

      context 'with no values provided' do
        let(:username) { nil }
        let(:password) { nil }
        let(:host)     { nil }

        it { is_expected.to eq 'env_noip_host' }
      end
    end
  end
end
