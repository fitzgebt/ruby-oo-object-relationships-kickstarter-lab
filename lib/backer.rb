require 'pry'

class Backer
    attr_accessor
    attr_writer
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        x = ProjectBacker.all.map do |projects| 
            if projects.backer == self  
                projects.project
            end
        end
        x-[nil]           
    end
end