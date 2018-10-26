class Stack
    def initialize
      @stack_array = []
    end

    def push(el)
      stack_array.push(el)
    end

    def pop
      stack_array.pop
    end

    def peek
      stack_array.last
    end

    private
    attr_reader :stack_array

end

class Queue
  def initialize
    @queue_array = []
  end

  def enqueue(el)
    queue_array.push(el)
  end

  def dequeue
    queue_array.shift
  end

  def peek
    queue_array.first
  end

  private
  attr_reader :queue_array

end

class Map
  def initialize
    @map_array = []
  end

  def set(key, value)
    map_array.each { |pair| pair[1] = value if pair[0] == key }
    map_array.push([key,value]) unless map_array.include?([key,value])
  end

  def get(key)
    map_array.each { |pair| return pair[1] if pair[0] == key }
    nil
  end

  def delete(key)
    value = get(key)
    underlying_array.reject! { |pair| pair[0] == key }
    value
  end

  def show
    deep_dup(map_array)
  end

  private
  attr_reader :map_array

  def deep_dup(arr)
    arr.map { |el| el.is_a?(Array) ? deep_dup(el) : el }
  end

end
