class Backer

  attr_accessor :backed_projects, :name

  def initialize (name)
    @name=name
    @backed_projects=[]
  end

  def back_project(project)
    @backed_projects<<project

    #Add a backer to the project as long as the
    #project doesn't already include the backer.
    #Condition is necessary to avoid infinite loop.
    project.add_backer(self) unless project.backers.include?(self)

    #Below code doesn't work but served as starting point
    #Project.add_backer(self)
  end

end
