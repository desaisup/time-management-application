require 'spec_helper'
require 'rails_helper'

describe "Checking for params"  do
    it "it is invalid without a email" do
    	puts "mmm"
    @alaramboxjob = User.new(email:nil)
    @alaramboxjob.valid?
       expect( @alaramboxjob.errors[:email]).to include("can't be blank")
  end
end




=begin
class FizzBuzz
    def answer(number)
        multiple3 = number%3 == 0
        multiple5 = number%5 == 0
        return case
        when (multiple3 and multiple5) then "FizzBuzz"
        when multiple3 then "Fizz"
        when multiple5 then "Buzz"
        else number
        end
    end
end=end


=begin
require "rspec"
require "./fizzBuzz"

RSpec.describe "#answer" do
    it "returns Buzz when number is multiple of 3" do 
        result = FizzBuzz.new.answer(3)
        expect(result).to eq("Fizz")
    end

    it "returns Buzz when number is multiple of 5" do 
        result = FizzBuzz.new.answer(5)
        expect(result).to eq("Buzz")
    end

    it "returns a number when the input number is neither multiple of 3 nor 5" do 
        result = FizzBuzz.new.answer(11)
        expect(result).to eq(11)
    end

end

=end

=begin
RSpec.describe "#answer" do

  RESULTS = { 3 => "Fizz",
              5 => "Buzz",
              11 => 11 }

  RESULTS.each do |value, answer|
    it "returns #{answer} when the input is #{value}" do 
      result = FizzBuzz.new.answer(value)
      expect(result).to eq(answer)
    end
  end

end=end
