def mean(string)
    tot = 0
    
    x = string.split("")

    x.each_with_index {|x| n = x.to_i
        if n.is_a? Integer  
          tot += n
        end 
        }
        return (tot / string.split(",").length)
end

def median(string)
end

def range(string)
    highest = 0 
    lowest = 0 
    x = string.split("")
    x.each_with_index {|x, i| 
    if x.to_i > x[i-1].to_i
        highest = x.to_i
    end
}
return highest
end



def results(string)

    if string == ''
      return ''
    else 
      mean = mean(string)
      range = range(string)
    end
    
    return "Range: 00|00|0#{range} Average: 00|00|0#{mean} Median: 00|00|0#{mean}"

end


