require_relative '../../minitest_helper.rb'


# require 'minitest/autorun'
# require 'minitest/spec'
# require 'minitest/pride'
# require './quotejar'
# require './quotejar/age'
# require './quotejar/kids'
 require 'time'
 require 'yaml'

describe "Kids" do

  before do # creates a new Kid object with the name Sally and a birthday of today
    time = Time.new
    @kid = Kids.new("Sally", time)
  end

  it "returns 'Sally' for kid.name and an empty hash for kid.quotes" do 
    @kid.name.must_equal "Sally"
    @kid.quotes.must_equal Hash.new
  end

  it "responds to .save_kid and returns true in response to whether Sally.yaml exists" do
    @kid.save_kid # save_kid method creates Sally.yaml for storing object
    File.file?("#{@kid.name}.yaml").must_equal true
  end
end