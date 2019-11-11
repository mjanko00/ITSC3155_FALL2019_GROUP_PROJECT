class MotivationsController < ApplicationController
    def create
        @journals = Journal.find(params[:journal_id])
        @motivation = @journal.motivations.create(motivation_params)
        redirect_to journal_path(@journal)
    end
    
    private 
        def motivation_params
            params.require(:motivation).permit(:motivater , :message)
        end
    
end
