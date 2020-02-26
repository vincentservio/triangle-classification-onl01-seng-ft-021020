class Triangle
 attr_accessor :side1, :side2, :side3, :kind

    def initialize(side1, side2, side3)
      @side1 = side1
      @side2 = side2
      @side3 = side3
    end

     def kind 
       if (side1 * side2 * side3) == 0 || (side1 + side2) <= side3 || (side2 + side3) <= side1 || (side3 + side1) <= side2 
        
          raise TriangleError
          # rescue TriangleError => error
        # puts error.message
  
       
       
       elsif  side1 == side2 && side1 == side3
       self.kind = :equilateral
       elsif side1 == side2 || side2 == side3 || side1 == side3
       self.kind = :isosceles
       else  
       self.kind = :scalene
     end
  end
end
class Triangle::TriangleError < StandardError
  def message
    puts "not a Triangle"
  end
end