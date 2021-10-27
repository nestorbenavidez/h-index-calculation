# spec/h_index_calculation_spec.rb
require 'spec_helper'
require 'h_index_calculation'

describe HIndexCalculation do
  before :all do
    puts "Running test over #{self.class.description} - Please refer to spec for more details"
  end

  let(:secuence) { HIndexCalculation.new([0,1,3,5,6]) }
  let(:empty_secuence) { HIndexCalculation.new([]) }
  let(:single_number_secuence){ HIndexCalculation.new([3]) }

  it "find a correct h index for the secuence of papers" do
    expect(secuence.run).to be_equal(3)
  end

  it "single digits or 1 element secuence will return 1" do
    expect(single_number_secuence.run).to be_equal(1)
  end

  it "0 element secuence will return 0" do
    expect(empty_secuence.run).to be_equal(0)
  end

end