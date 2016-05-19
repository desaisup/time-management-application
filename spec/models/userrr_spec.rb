 require 'spec_helper'
require 'rails_helper'

describe User do
 it "should require a email" do
    user=User.new(:email=>"")
    user.valid?
    user.errors.should
    have_key(:email)
  
  end
end