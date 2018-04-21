class Project

  attr_accessor :backers, :title

  def initialize (title)
    @title=title
    @backers=[]
  end

  def add_backer(backer)
    @backers<<backer

    #Add a project to the backer as long as
    #the project does not already include the backer
    #Condition is necessary to avoid infinite loop.
    backer.back_project(self) unless backer.backed_projects.include?(self)

    #Below code doesn't work but served as starting point
    #Backer.back_project(self)
  end


end
