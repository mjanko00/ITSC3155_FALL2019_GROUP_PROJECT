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
        
     if @journal.save
         redirect_to @journal
     else
         render 'new'
     end
   
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
    
    def destroy  
        @journal = Journal.find(params[:id]) 
        @journal.destroy
        
        redirect_to @journal
    end

end

private
    def journal_params
        params.require(:journal).permit(:meal_type, :food_item, :serving, :cal, :prot, :carbs, :fats)
    end
