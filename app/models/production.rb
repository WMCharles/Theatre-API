class Production < ApplicationRecord
    has_many :crew_members, :dependent => :delete_all
    validates :title, :genre, :budget, :image, :director, :ongoing, presence: true
end
