class DirectorsController < ApplicationController

  def index
    @directors_array = Director.all

    render({ :template => "director_templates/index.html.erb"})
  end

  def director_details

    id = params.fetch("id").to_i

    @director = Director.where({ :id => id}).at(0)

    render({ :template => "director_templates/details.html.erb"})
  end

  def eldest
    @eldest_director = Director.where.not({ :dob => nil}).order({ :dob => :asc}).at(0)
    @eldest_name = @eldest_director.name
    @eldest_dob = @eldest_director.dob

    render({ :template => "director_templates/eldest.html.erb"})
  end

end
