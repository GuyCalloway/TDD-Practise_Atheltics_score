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

def seconds_to_times(int)
    tot_mins = 0
    seconds = 0

    hours = int/3600

    while int/60 != 0
        int -= 60
        tot_mins += 1
        if int - 60 < 0
            seconds = int
        end
    end
    
    mins = tot_mins - (hours * 60)

    if int/60 == 0
        seconds = int
    end
  
  arr = ["#{hours}", "#{mins}", "#{seconds}"]

  t = arr.map { |x| if x.length == 1
                   x = "0" + x
                    else
                        x
                    end
              }

  t.join("|")
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
    arr = arrayOftimes(string).sort
    x = arr.length/2
    if arr.length % 2 == 0
        return (arr[x] + arr[x-1])/2
    else
        return arr[x]
    end 
end

def range(string)
    arr = arrayOftimes(string)
    highest = arr.max
    lowest = arr.min
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
    
    return "Range: #{seconds_to_times(range)} Average: #{seconds_to_times(mean)} Median: #{seconds_to_times(median)}"

end


