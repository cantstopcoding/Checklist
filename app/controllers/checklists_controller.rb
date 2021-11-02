class ChecklistsController < ApplicationController
    def index 
        @checklists = Checklist.all
    end

    def new
        @checklist = Checklist.new
    end

    def create
        Checklist.create(checklists_params)
        redirect_to checklists_path
    end

    private

    def checklists_params
        params.require(:checklist).permit(:title)
    end

end