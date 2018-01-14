class WelcomeController < ApplicationController
    before_action :uploads
    
  
    def uploads
        if user_signed_in?
            @posts = Post.where(user: current_user).order("created_at DESC")
        end    
    end    
    


end