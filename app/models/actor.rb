# == Schema Information
#
# Table name: actors
#
#  id         :integer          not null, primary key
#  bio        :text
#  dob        :date
#  image      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Actor < ApplicationRecord
  # def characters
  #   matching_characters = Character.where({ :actor_id => self.id })

  #   return matching_characters
  # end

  has_many(:characters)

  # def filmography
  #   array_of_movie_ids = Array.new

  #   self.matching_characters.each do |a_character|
  #     array_of_movie_ids.push(a_character.movie_id)
  #   end

  #   matching_movies = Movie.where({ :id => array_of_movie_ids })

  #   return matching_movies
  # end

  has_many(:filmography, { :through => :characters })
end
