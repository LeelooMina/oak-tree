class PagesController < ApplicationController
    def index
        @acorns = Acorn.all 
    end    
end
