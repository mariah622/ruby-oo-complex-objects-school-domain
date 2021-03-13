# code here!
class School
    attr_accessor :name, :roster
    def initialize(name)
        @name
        @roster = {}
    end 
    
    def add_student(student_name, student_grade)
        roster[student_grade] ||= []
        roster[student_grade] << student_name
    end 
    
    def grade(student_grade)
        roster[student_grade]
    end 

    def sort
        roster.each_value {|student_array| student_array.sort!}
    end 
end 