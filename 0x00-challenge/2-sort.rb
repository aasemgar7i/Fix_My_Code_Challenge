###
#
#  Sort integer arguments (ascending) 
#
###

result = []
ARGV.each do |arg|
    # skip if not integer
    next if arg !~ /^-?[0-9]+$/

    # convert to integer
    i_arg = arg.to_i
    
    # insert result at the right position
    if result.empty? || result.last <= i_arg
        result << i_arg
    else
        result.each_with_index do |num, index|
            if num >= i_arg
                result.insert(index, i_arg)
                break
            end
        end
    end
end

puts result
