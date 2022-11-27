class ProductionSerializer < ActiveModel::Serializer
  attributes :id, :title, :genre, :budget, :image, :director, :summary

  def summary
    "#{self.object.title}: #{self.object.director}"
  end
end
