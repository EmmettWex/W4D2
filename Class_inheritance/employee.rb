require_relative 'manager'

class Employee

    attr_reader :name, :title, :salary, :boss

    def initialize(name, title, salary, boss = nil)
        @name = name
        @title = title
        @salary = salary
        @boss = boss
        if boss != nil
            self.find_boss(boss)
        else
            @boss = nil
        end
    end

    def bonus(multiplier)
        @salary * multiplier
    end

    def find_boss(boss)
        boss.employees << self
    end

end