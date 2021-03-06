class JournalsController < ApplicationController
     def index 
        @search = JournalSearch.new(params[:search])
        @journals = @search.scope
     end
    
    def show
        @journal = Journal.find(params[:id])
    end
    
    def new
        @journal = Journal.new
    end
    
    def create
        @journal = Journal.new(journal_params)
        @journal.user = current_user
        
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
        params.require(:journal).permit(:date, :meal_type, :food_item, :serving, :cal, :prot, :carbs, :fats)
    end
    
    def total_protein
        total_protein = @journals.sum(:prot)
        total_protein
    end

     def total_cal
        total_cal = @journals.sum(:cal)
        total_cal
     end
     
    def total_fat
        total_fat = @journals.sum(:fats)
        total_fat
    end
       
    def total_carbs
        total_carbs = @journals.sum(:carbs)
        total_carbs
    end