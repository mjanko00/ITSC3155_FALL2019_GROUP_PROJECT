class MotivatesController < ApplicationController
    def create
        @journal = Journal.find(params[:journal_id])
        @motivate = @journal.motivates.create(motivate_params)
        redirect_to journal_path(@journal)
    end
    
    def destroy
        @journal = Journal.find(params[:journal_id])
        @motivate = @journal.motivates.find(params[:id])
        @motivate.destroy
        redirect_to journal_path(@journal)
    end
    
    private 
        def motivate_params
            params.require(:motivate).permit(:motivater , :message)
        end
end
