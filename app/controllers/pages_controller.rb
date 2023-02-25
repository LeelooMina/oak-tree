class PagesController < ApplicationController
    def index
        @acorns = Acorn.order(date_created: :desc)
    end    
end
