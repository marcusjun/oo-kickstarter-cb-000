class Backer

  attr_accessor :backed_projects, :name

  def initialize (name)
    @name=name
    @backed_projects=[]
  end

  def back_project(project)
    @backed_projects<<project
    project.add_backer(self) unless project.backers.include?(self)
    #Project.add_backer(self)
  end

end
