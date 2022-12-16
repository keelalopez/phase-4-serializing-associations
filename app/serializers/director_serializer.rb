class DirectorSerializer < ActiveModel::Serializer
  attributes :id, :name, :birthplace, :female_director

  # Sets the ActiveRecord association AND specifies which serializer to use when rendering
  has_many :movies, serializer: DirectorMovieSerializer
end
