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
    is_inserted = false
    i = 0
    l = result.size
    while !is_inserted && i < l do
        if result[i] > i_arg  # Compare correctly for ascending order
            result.insert(i, i_arg)  # Insert at the correct index
            is_inserted = true
            break
        else
            i += 1
        end
    end
    result << i_arg if !is_inserted  # Append if no insertion occurred
end

puts result

