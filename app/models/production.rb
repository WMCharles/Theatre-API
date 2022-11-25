class Production < ApplicationRecord

    has_many :crew_members, :dependent => :delete_all

    validates :title, presence: true
    validate :no_more_musical

    # Custom Validation
    def no_more_musical 
        if genre.downcase == "musical"
            errors.add(:genre, "Sorry, no more musicals.")
        end
    end
end
