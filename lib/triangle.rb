class Triangle
  # write code here
  attr_reader :x, :y, :z

  def initialize(x, y, z)
    @x = x
    @y = y
    @z = z
  end

  def kind
    raise TriangleError if !self.valid_number? || self.invalid_length?
    if x == y && y == z
      :equilateral
    elsif x == y || y == z || z == x
      :isosceles
    else
      :scalene
    end
  end

  def valid_number?
    x > 0 && y > 0 && z > 0
  end

  def invalid_length?
    @line_x >= @line_y + @line_z || @line_y >= @line_x + @line_z || @line_z >= @line_x + @line_y
  end
end

class TriangleError < StandardError
end
