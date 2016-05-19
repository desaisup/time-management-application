class UserController <ApplicationController

def new 
	
end
def index
	puts "helooooo"
end
end

public 
def create_users_params
 params.require(:users).permit(:id,:email,:encrypted_password,:reset_password_token,:reset_password_sent_at,:remember_created_at,:sign_in_count,:current_sign_in_at,:last_sign_in_at,:current_sign_in_ip,:last_sign_in_ip,:duration,:from_date,:to_date)

end
end

end