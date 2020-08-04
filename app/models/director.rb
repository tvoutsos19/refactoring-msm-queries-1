# == Schema Information
#
# Table name: directors
#
#  id         :integer          not null, primary key
#  bio        :text
#  dob        :date
#  image      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Director < ApplicationRecord
  # def filmography
  #   matching_movies = Movie.where({ :director_id => self.id })

  #   return matching_movies
  # end

  has_many(:filmography, { :class_name => "Movie", :foreign_key => "director_id" })
end
