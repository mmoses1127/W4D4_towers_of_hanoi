class Disk

    attr_reader :size

    def initialize(size)
        @size = size
    end

    def inspect
        @size.to_s
    end

end