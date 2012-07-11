  
# MakeAnyWishes
# App ID: 313753795376894
# App Secret: 2279bc791147477e77d887ef481be128


class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_user
  helper_method :user_signed_in?
  helper_method :correct_user?

  private
    def current_user
      begin
        @current_user ||= User.find(session[:user_id]) if session[:user_id]
      rescue Mongoid::Errors::DocumentNotFound
        nil
      end
    end

    def user_signed_in?
      return true if current_user
    end

    def correct_user?
      @user = User.find(params[:id])
      unless current_user == @user
        redirect_to root_url, :alert => "Access denied."
      end
    end

    def authenticate_user!
      if !current_user
        redirect_to root_url, :alert => 'You need to sign in for access to this page.'
      end
    end

    def facebook_user
    (session[:fb_access_token] && session[:fb_user_uid]) ? FBGraph::Client.new(:client_id => '313753795376894', :secret_id => '2279bc791147477e77d887ef481be128', :token => session[:fb_access_token]).selection.me.info! : nil
    end
end
