def sqrt(number)
    sqrt_recursive(number, 0, number)
  end
  
  def sqrt_recursive(number, min_interval, max_interval)
    medio = ((max_interval - min_interval) / 2) + min_interval
      test = medio ** 2
      
      if test == number
          medio
      elsif test < number
          sqrt_recursive(number, medio + 1, max_interval)
      else
          sqrt_recursive(number, min_interval, medio - 1)
      end
  end
  
  puts sqrt(25)
  puts sqrt(7056)