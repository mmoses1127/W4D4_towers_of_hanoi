require_relative "user"
require_relative "stack"
require "byebug"

class Board

    def initialize(num_disks)
        @num_disks = num_disks
        @stacks=[Stack.new(num_disks), Stack.new(0), Stack.new(0)]
        @user = User.new
    end

    def move
        moves = @user.prompt
        starting_stack = @stacks[moves[0]]
        ending_stack = @stacks[moves[1]]
        if starting_stack.empty? 
            raise RuntimeError.new("Can't pull from empty stack.")
        end
        new_disk = starting_stack.take_disk
        if !ending_stack.disk_smaller?(new_disk)
            raise RuntimeError.new("Disk too big.")
        end 
        ending_stack.place_disk(new_disk)
    end 

    def win?
        full?(1) || full?(2)
    end

    def play
        while !win?
            render
            move
        end 
        puts "You won the game!"
    end 

    def full?(stack_num)
        @stacks[stack_num].length == @num_disks
    end 

    def render
        @stacks.each_with_index do |stacky, i|
            puts "Stack #{i}:  #{stacky.stack} |"
        end
    end

end

b = Board.new(5)
b.play