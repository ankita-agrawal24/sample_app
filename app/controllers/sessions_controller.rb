class SessionsController < ApplicationController


	def create 
		user = User.find_by( email: params[:sessions][:email].downcase)
		if user && user.authenticate(params[:sessions][:password])
				sign_in user
				redirect_back_of user
		else
			flash.now[:error] = 'Invalid email/password combination'
			render 'new'
		end
	end

	def destroy
		sign_out
		redirect_to root_url
	end

end
