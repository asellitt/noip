require 'spec_helper'

describe Noip do
  describe '.version' do
    subject(:version) { Noip.version }
    it { is_expected.to eq '0.1' }
  end
end
