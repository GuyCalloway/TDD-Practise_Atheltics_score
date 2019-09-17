def times_to_seconds(string)
    total = 0
    time = string.split('|')
    time.each_with_index { |x, i| if i == 0
                                    total += (x.to_i * 60 * 60)
                                  elsif i == 1
                                    total += (x.to_i * 60)
                                  else
                                    total += x.to_i
                                  end
    }
    return total
end

def arrayOftimes(string)
   array = string.split(",")
   array.map {|x| times_to_seconds(x)}
end



def mean(string)
    arr = arrayOftimes(string)
    tot = 0
    arr.each {|x| tot += x}
    return (tot/arr.length)
end

def median(string)
    arr = arrayOftimes(string)
    p arr.length
    x = arr.length/2
    p x
    if arr.length % 2 == 0
        return (arr[x] + arr[x-1])/2
    else
        return arr[x]
    end 
end

def range(string)
    arr = arrayOftimes(string)
    highest = 0 
    lowest = 0 
   arr.each_with_index { |x, i| 
    if x > x[i-1]
        highest = x
    end

    if x < x[i-1]
        lowest = x
    elsif arr.length == 1
        lowest = x
    end
  }

  return (highest - lowest)
end

def results(string)

    if string == ''
      return ''
    else 
      mean = mean(string)
      range = range(string)
      median = median(string)
    end
    
    return "Range: 00|00|0#{range} Average: 00|00|0#{mean} Median: 00|00|0#{median}"

end


