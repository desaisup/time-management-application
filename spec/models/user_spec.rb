require 'spec_helper'
require 'rails_helper'
RSpec.describe User, :type => :model do
  it "is invalid without a email" do
    @user = User.new(email: nil)
    @user.valid?
       expect(@user.errors[:email]).to include("can't be blank")

  end

it "The entered email should be end with @careerbuilder" do
    @user = User.new(email: "user@careerbuilder.co")
    @user.Invalid?
       expect(@user.errors[:email]).to include("can't be blank")
       
  end
end