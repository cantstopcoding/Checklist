class ChecklistsController < ApplicationController
    def index 
    end

    def new
        @checklist = Checklist.new
    end
end