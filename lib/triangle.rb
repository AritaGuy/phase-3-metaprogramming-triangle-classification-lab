class Triangle
  # write code here
  attr_reader  :a, :b, :c
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if ((@a && @b && @c > 0) && (@a + @b > @c && @a + @c > @b && @b + @c > @a) )
    if @a == @b && @b == @c
     :equilateral
    elsif @a == @b || @b == @c || @c == @a
       :isosceles
    elsif @a != @b && @b != @c && @a != @c
       :scalene
    end
  else
    begin
      raise TriangleError
    end
  end
  end

  class TriangleError < StandardError
    
  end
  
end
