require 'spec_helper'

describe Noip::Agent do
  describe '#user_agent' do
    before do
      stub_const("Noip::VERSION", "DEAD.BEEF")
    end

    subject(:user_agent) { Noip::Agent.new.user_agent }

    it { is_expected.to eq "noip ruby gem/vDEAD.BEEF anthony.noip_gem@asellitt.com" }
  end
end
