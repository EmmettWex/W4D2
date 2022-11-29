require_relative "employee"

class Manager < Employee

    attr_reader :name, :title, :salary, :boss, :employees

    def initialize(name, title, salary, boss=nil)
        super
        @employees = []
    end

    def bonus(multiplier)
        all_emps = [self]

        total = 0

        while !all_emps.empty?
            emp = all_emps.shift
            if emp.is_a?(Manager)
                all_emps += emp.employees
                total += emp.salary
            else
                total += emp.salary
            end
        end
        total * multiplier
    end

end