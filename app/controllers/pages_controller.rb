class PagesController < ApplicationController
    
    def accueil
        @id = params[:id]
        @user = User.find_by(id: @id)
    end

    def home
    end

    def information
    end

    def connexion
    end

    def modify
    end

    def changer
        @user = User.find_by(email: params[:email_modify])
        @user.nom = params[:nom_modify]
        @user.prenom = params[:prenom_modify]
        @user.contact = params[:tel_modify]
        @user.save
        @link = '/dashboard/'+ @user.id.to_s
        redirect_to @link
    end
        
    def createUser
        @user = User.new
        @user.nom = params[:nom]
        @user.prenom = params[:prenom]
        @user.contact = params[:contact]
        @user.email = params[:email]
        @user.password = params[:password_user]
        @user.save
        redirect_to "/login"
    end

    def connectUser
        @user = User.find_by(email: params[:email_connect])
        @user1 = User.find_by(password: params[:password_connect])
        if @user && @user == @user1
            @link = '/dashboard/'+ @user.id.to_s
            redirect_to @link
        else
            redirect_to '/login', notice:"Hello"
        end
    end
end