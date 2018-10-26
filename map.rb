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
