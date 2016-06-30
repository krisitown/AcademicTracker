class SubjectsController < ApplicationController
    def new
        @subject = Subject.new
        session[:current_user] = params[:id]
    end
    
    def create
        @subject = Subject.new(subject_params)
        if @subject.save
            flash[:success] = "Successfully added a subject!"
            redirect_to User.find(session[:current_user])
        else
            flash[:danger] = "Subject was not added successfully!"
            redirect_to User.find(session[:current_user])
        end
    end
    
    def index
        @subjects = Subject.all
    end
            
    private
        def subject_params
            params.require(:subject).permit(:name, :user_id)
        end
        
end
