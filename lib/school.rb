# code here!
class School

    attr_reader :roster, :name

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        if !@roster.keys.include?(grade)
            @roster[grade] = [name]
        else 
            index = @roster[grade].count
            @roster[grade][index] = name
        end
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        sorted_roster = {}
        @roster.each do |grade, students|
            sorted_roster[grade] = students.sort
        end
        sorted_roster
    end
end