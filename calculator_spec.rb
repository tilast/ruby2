require 'rspec'
require_relative 'calculator.rb'

describe Calculator do

  before :each do
    @calculator = Calculator.new
  end

  describe "#new" do

    it "returns a new calculator object" do
      @calculator.should be_an_instance_of Calculator
    end

  end

  describe "#get" do

    it "can get an array of elements" do
      @calculator.get([1, 4, 9, 0, "haha", 11])
      @calculator.arr.should == [1, 4, 9, 0, 0, 11]
    end

    it "can get a list of elements" do
      @calculator.get(1, 7, 12, "s", 78)
      @calculator.arr.should == [1, 7, 12, 0, 78]
    end

    it "can get a list of elements and arrays" do
      @calculator.get(1, 7, 12, "s", [12, 44, "hahaha", 91], 78)
      @calculator.arr.should == [1, 7, 12, 0, 12, 44, 0, 91, 78]
    end

  end

  describe "#clear" do

    it "should clear an array" do
      @calculator.get(7, 9, 12, "hdsf", 96)
      @calculator.arr.should_not == []
      @calculator.clear
      @calculator.arr.should == []
    end

  end

  describe "#sum" do

    it "should returns a sum of all elements" do
      @calculator.get(7, 11, 9, [22, "ha", 45])
      @calculator.sum().should == 94
    end

  end

  describe "#min" do

    it "should returns a sum of all elements with the minus sign" do
      @calculator.get(7, 11, 9, [22, "ha", 45])
      @calculator.min().should == -94
    end

  end

end