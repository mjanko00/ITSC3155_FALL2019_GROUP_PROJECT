class JournalsController < ApplicationController
    
    def new
    end
    
    def create
        render plain: params[:journal].inspect
    end
end
