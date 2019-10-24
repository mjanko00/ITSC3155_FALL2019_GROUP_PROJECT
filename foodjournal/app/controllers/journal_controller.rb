class JournalController < ApplicationController
    def index
        @journal = Journal.all
    end
    
    def show
        @journal = Journal.find(params[:id])
    end
    
    def new
    end
    
    def create
        @journal = Journal.new(journal_params)
        
        @journal.save
        redirect_to @journal
    end
end

private
    def journal_params
        params.require(:journal).permit(:title, :text)
    end
