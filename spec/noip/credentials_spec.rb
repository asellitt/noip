require 'spec_helper'

describe Noip::Credentials do
  subject(:credentials) { Noip::Credentials.new('username', 'password', 'host') }

  describe '.username' do
    subject(:username) { credentials.username }
    it { is_expected.to eq 'username' }
  end

  describe '.password' do
    subject(:password) { credentials.password }
    it { is_expected.to eq 'password' }
  end

  describe '.host' do
    subject(:host) { credentials.host }
    it { is_expected.to eq 'host' }
  end
end
