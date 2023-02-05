class DirectorsController < ApplicationController

  def index
    @directors_array = Director.all

    render({ :template => "director_templates/index.html.erb"})
  end

  def director_details

    id = params.fetch("id").to_i

    @director = Director.where({ :id => id}).at(0)

    @filmography = Movie.where({ :director_id => id }) #This should be an active record relation, i.e. an array

    render({ :template => "director_templates/details.html.erb"})
  end

  def eldest
    @eldest_director = Director.where.not({ :dob => nil}).order({ :dob => :asc}).at(0)
    @eldest_name = @eldest_director.name
    @eldest_dob = @eldest_director.dob
    @eldest_id = @eldest_director.id

    render({ :template => "director_templates/eldest.html.erb"})
  end

  def youngest
    @youngest_director = Director.where.not({ :dob => nil}).order({ :dob => :desc}).at(0)
    @youngest_name = @youngest_director.name
    @youngest_dob = @youngest_director.dob
    @youngest_id = @youngest_director.id

    render({ :template => "director_templates/youngest.html.erb"})
  end

end
