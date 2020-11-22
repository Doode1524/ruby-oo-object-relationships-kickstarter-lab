class Backer
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end
    
    def backed_projects
        project_backers = ProjectBacker.all.select do |proj_back|
          proj_back.backer == self
        end
        project_backers.collect do |proj_back|
          proj_back.project
        end
    end
    


    
        


end