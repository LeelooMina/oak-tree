class User < ApplicationRecord

    validates :username, :email, presence: true, uniqueness: true, length: {minimum: 3, maximum: 25}
    validates :email, format:
     {with: URI::MailTo::EMAIL_REGEXP}
    validates :password, presence: true

    

    has_many :likes
    has_many :acorns
    
    has_many :follower_relationships, foreign_key: :followed_id, class_name: 'Follow'
    has_many :followers, through: :follower_relationships, source: :follower
  
    has_many :following_relationships, foreign_key: :follower_id, class_name: 'Follow'
    has_many :following, through: :following_relationships, source: :followed

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
