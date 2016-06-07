require 'spec_helper'
require 'rails_helper'


    puts "outside rspec........................"
RSpec.describe User, type: :model do
  puts "BBBBBBBBBBBBBBBBBBBBBBB"
  it 'if email is empty' do
    puts "55555555555555555555"
    user = User.new(email: 'shiva@careerbuilder.com ')
     puts "54444444444444555"

    result = user.save

    expect(result).to be(false)
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
