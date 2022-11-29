class Manager

    attr_reader :name, :title, :salary, :boss, :employees

    def initialize(name, title, salary, boss=nil)
        @name = name
        @title = title
        @salary = salary
        @boss = boss
        @employees = []
    end

    def bonus(multiplier)
        all_emps = @employees

        total = 0
        while !all_emps.empty?
            emp = all_emps.shift
            if emp.is_a?(Manager)
                all_emps.concat!(emp.employees)     # += || + || concat
                total += emp.salary
            else
                total += emp.salary
            end
        end
        total * multiplier
    end



end