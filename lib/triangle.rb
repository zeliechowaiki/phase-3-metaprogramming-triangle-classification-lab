class Triangle

  attr_reader :sides
  
  def initialize(side1, side2, side3)
    @sides = [side1, side2, side3].sort
  end

  def kind
    if @sides[0] + @sides[1] > @sides[2]
      determine_tri_kind
    else
      begin
        raise TriangleError
      # rescue TriangleError => error
      #   puts error.message
      end
    end
  end

  class TriangleError < StandardError
    # def message
    #   'Invalid triangle'
    # end
  end

  private

  def determine_tri_kind
    puts 'valid tri'
    if (@sides[0] == @sides[1]) && (@sides[1] == @sides[2])
       :equilateral
    elsif (@sides[0] == @sides[1]) || (@sides[1] == @sides[2])
      :isosceles
    else
      :scalene
    end
  end

end
