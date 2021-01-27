require 'pry'

class Project
    attr_accessor
    attr_writer
    attr_reader :title

    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        x = ProjectBacker.all.map {|projects| projects.project == self ? projects.backer : nil}
        x-[nil]
    end
end