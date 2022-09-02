class Array

    def my_uniq
        new_array = []
        self.each do |el|
            new_array << el if !new_array.include?(el)
        end
        new_array
    end

    def two_sum
        pairs = []
        self.each_with_index do |el1, i|
            self.each_with_index do |el2,j|
                if j>i 
                    pairs << [i,j] if el1 + el2 == 0 
                end 
            end 
        end
        pairs
    end

    def my_transpose
        transposed = Array.new(self.length) {Array.new(self.length)}
        (0...self.length).each do |i|
            (0...self.length).each do |j|
                transposed[i][j] = self[j][i]
            end
        end
        transposed
    end
    
    def stock_picker
        pairs = []
        self.each_with_index do |el1, i|
            self.each_with_index do |el2, j|
                profit = el2-el1
                if i<j
                    pairs << [i,j, profit]
                end 

            end

        end
        sorted = pairs.sort_by {|pair| pair[2] }
        sorted[-1][0..1]
    end









 


end 
