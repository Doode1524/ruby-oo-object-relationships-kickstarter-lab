class Project
    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        project_backers = ProjectBacker.all.select do |proj_back|
          proj_back.project == self
        end
        project_backers.collect do |proj_back|
          proj_back.backer
        end
    end

end
