require 'spec_helper'
require 'rails_helper'

describe User do
 before { @user = User.new(email: "user@careerbuilder.com") }
  subject { @user }
  it { should respond_to(:email) }

  it { should be_valid }
  
  describe "when email is not present" do
    before { @user.email = " " }
    it { should_not be_valid }
end

end
