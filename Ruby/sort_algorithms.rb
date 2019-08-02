def create_array(length: 100, max_size: 10)
  @a ||= (
    a = []
    length.times{|t| a.push(Random.rand(max_size))}
    a
  )
end

class Array
  def bubble_sort
    new_array = self.clone
    swap = true
    while swap
      swap = false
      (new_array.length - 1).times do |x|
        if new_array[x] > new_array[x+1]
          new_array[x], new_array[x+1] = new_array[x+1], new_array[x]
          swap = true
        end
      end
    end
    new_array
  end

  def insert_sort
    array = self.clone
    array.length.times do |j|
      while j > 0
        if array[j-1] > array[j]
          array[j], array[j-1] = array[j-1], array[j]
        else
          break
        end
        j-=1
      end
    end
    array
  end

  def quick_sort
    array = self.clone
    return array if array.length <= 1
    pivot = array.delete_at(rand(array.length))

    left = Array.new
    right = Array.new

    array.each do |x|
      if x >= pivot
        right << x
      else
        left << x
      end
    end

    return *left.quick_sort, pivot, *right.quick_sort
  end

  
end

  start = Time.now
  array = create_array(length: 10000, max_size: 20)
  puts "Time generating random array: #{Time.now - start}"

  start = Time.now
  puts array.quick_sort.join(",")
  puts "Time bubble sorting array: #{Time.now - start}"
