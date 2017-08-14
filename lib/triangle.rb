class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
    @sides = [a, b, c]
  end

  def kind
    validate_triangle
    if a === b && b === c
      :equilateral
    elsif a === b || b === c || a === c
      :isosceles
    else
      :scalene
    end
  end



  def validate_triangle
    if ((a + b) <= c) || ((a + c) <= b) || ((b + c) <= a) || @sides.any? { |side| side <= 0 }
      raise TriangleError
    end
  end
end

class TriangleError < StandardError
end
