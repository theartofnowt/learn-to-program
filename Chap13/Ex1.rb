#OrangeTree

class OrangeTree

    def initialize
        @height = 200 #cm
        @age = 5
        @oranges = 0

        puts "An Orange tree is planted"
    end


    def height
        puts "The orange tree is #{@height}cm tall"
    end

    def oneYearPasses
        @height += 10
        @age += 1
        @oranges = 0

        if @age > 10
            @oranges = @oranges + @age + 5
        end

        if @age > 200
            puts "The orange tree has died.. :("
            exit
        end

        puts "The orange tree is now #{@age} years old"
    end

    def countTheOranges
         puts "There are #{@oranges} oranges left on the tree"
    end

    def pickAnOrange
        if @oranges > 0
            @oranges -= 1
        elsif @oranges <= 0
            puts "There are no more oranges to pick this year :("
        else
            puts "That orange was truly delicious!"
        end
    end
end

tree = OrangeTree.new
tree.height
tree.countTheOranges
tree.pickAnOrange
tree.countTheOranges
20.times {tree.oneYearPasses}
tree.pickAnOrange
tree.countTheOranges
tree.height
30.times {tree.pickAnOrange}
250.times {tree.oneYearPasses}
