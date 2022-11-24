class Production < ApplicationRecord
    has_many :crew_members, :dependent => :delete_all
end
