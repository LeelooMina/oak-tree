class PagesController < ApplicationController
    def index
        @acorns = Acorn.order(date_created: :desc)
    end 

    def explore
        @acorns = Acorn.all.sample(20)
    end

    def following

        current_user.followers.each do |follower|
         
            follower.acorns.all.each do |acorn|


            end
        end
    end
end
