class User

    def prompt
        puts 'Enter a pile to take a disk from and a pile to place it on, separated by a space (e.g. 0 1).'

        move = gets.chomp.split(' ')
        move.map! {|num| num.to_i}
    end


end