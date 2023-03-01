class User < ApplicationRecord

    validates :username, presence: true
    validates :email, presence: true
    validates :password, presence: true

    

    has_many :likes

    def image_path_exists
        require 'open-uri'
        # is the url valid?
        # does the response have a content type img

        begin
            # if thrown an exception, then rescue will execute
            path = URI.open(:profile_img)

            errors.add(:image_path, "URL does not contain image") and return unless path.content_type.starts_with?("image")
        rescue 
            errors.add(:profile_img, "Invalid URL")
            
        end

       
        
    end

end
