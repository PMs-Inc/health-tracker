class ExerciseType < ActiveRecord::Base
  has_many :exercises

  def self.get_options
    all.reduce([]) {|options, i| options << [i.name, i.id]}
  end
end
