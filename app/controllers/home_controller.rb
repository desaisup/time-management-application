class HomeController < ApplicationController


	def index
    if user_signed_in?
    	redirect_to :controller=> "project",:action=>"new"
	end
    end
end
