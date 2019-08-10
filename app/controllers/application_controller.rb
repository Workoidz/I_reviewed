class ApplicationController < ActionController::Base

	protect_from_forgery with: :exception

	before_action :ensure_login
	helper_method :logged_in?, :current_user


	protected

		def ensure_login

			redirect_to login_path unless session[:reviewer_id]

		end	

		def logged_in?
			session[:reviewer_id]
		end

		def current_user
			@current_user ||= Reviewer.find(session[:reviewer_id])
		end


end
