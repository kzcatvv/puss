class SessionsController < ApplicationController
	def new
		puts session
	end

	def create
		session_info = UserInfo.find_by(user_id:params[:session][:user_id].downcase)
		#puts '--------------------------------------------------------------------'
		#puts session_info.user_id
		#puts '--------------------------------------------------------------------'
		if session_info && session_info.authenticate(params[:session][:password])
			#session[:remember_token] = session_info.user_id
			redirect_to user_infos_path
		else
			flash.now[:error] = 'Invalid userid/password combination'
			render 'new'
		end
	end

	def destroy
	end

end
