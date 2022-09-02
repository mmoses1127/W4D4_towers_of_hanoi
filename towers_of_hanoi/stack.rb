require_relative "disk"

class Stack

    attr_reader :stack

    def initialize(num_disks)
        @stack = []
        (0...num_disks).each {|size| @stack << Disk.new(num_disks - size) }
    end

    def take_disk
        @stack.pop
    end 

    def place_disk(disk)
        @stack << disk
    end

    def disk_smaller?(disk)
        return true if self.stack.empty?
        disk.size < @stack[-1].size
    end

    def empty?
        @stack.empty?
    end 

    def length
        @stack.length
    end



end 
