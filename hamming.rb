class Hamming

  def self.compute(strand_a, strand_b)
    if strand_a.length == strand_b.length

      @strand_a_array = split_to_array(strand_a)
      @strand_b_array = split_to_array(strand_b)

      counter = 0
      count = 0

      @strand_a_array.each do |element|
        if element != @strand_b_array[counter]
          counter += 1
          count += 1
        else
          counter += 1
        end
      end

      count

    else
      raise ArgumentError.new("The strands are not equal lengths")
    end

  end

  def self.split_to_array(strand)
    @strand_array = Array.new
    strand.split("").each do |char|
      @strand_array << char
    end
  end

end