class JournalsController < ApplicationController
    def index 
        @journals = Journal.all
    end
    
    def show
        @journal = Journal.find(params[:id])
    end
    
    def new
        @journal = Journal.new
    end
    
    def create
        @journal = Journal.new(journal_params)
        
<<<<<<< HEAD
        if @journal.save 
            redirect_to @journal
        else 
            render 'new' 
        end
=======
     if @journal.save
         redirect_to @journal
     else
         render 'new'
     end
   
>>>>>>> 3fd556b1c923f3e317c33aae682305b57121761a
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
    
     def index
        @journals = Journal.all
     end
end

private
    def journal_params
        params.require(:journal).permit(:title, :text)
    end
