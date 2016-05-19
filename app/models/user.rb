class User < ActiveRecord::Base
  has_many :employees ,:dependent=>:destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  
  validates :email, :format => /@careerbuilder.com/,:presence => true, :length => {:minimum => 20, :maximum => 50}



  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable



end
