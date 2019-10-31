class JournalsController < ApplicationController
    def show
        @journal = Journal.find(params[:id])
    end
    
    def new
    end
    
    def create
        @journal = Journal.new(journal_params)
        
        @journal.save
        redirect_to @journal
        #render plain: params[:journal].inspect
    end
    
    def edit
        @journal = Journal.find(params[:id])
    end
    
    def update 
        @journal = Journal.find(params[:id]) 
        if @journal.update(journal_params) 
            redirect_to @journal 
        else 
            render 'edit' 
        end 
    end
end

private
    def journal_params
    params.require(:journal).permit(:title, :text)
    end
