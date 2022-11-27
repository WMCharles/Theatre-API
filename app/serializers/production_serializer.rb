class ProductionSerializer < ActiveModel::Serializer
  attributes :id, :title, :genre, :budget, :image, :director, :summary
  has_many :crew_members

  def summary
    "#{self.object.title}: #{self.object.director}"
  end
end
