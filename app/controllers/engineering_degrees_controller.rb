class EngineeringDegreesController < ApplicationController
  
  def degree_programmes
  #  you fetch only the modules with 'engineering' as a title
    @degree_programmes = DegreeProgramme.find(:all, :conditions => ["department = 'engineering'"])
    #find(:all, :conditions => ["department = 'engineering'"])  
  end

end
 