class HIndexCalculation
=begin
Algorithm based on explanation at https://www.youtube.com/watch?v=0FPdOoht5Rc
Assumptions
According to the definition of h-index on Wikipedia:
"A scientist has index h if h of his/her N papers have at least h citations each,
and the other N − h papers have no more than h citations each."
=end

  def initialize(citations)
    @citations = citations
  end

  def run
    return 0 if @citations.empty? || @citations.nil?
    length = @citations.length
    dynamic_length = 0
    rate = length - 1
    sorted_citations = @citations.uniq.sort

    while dynamic_length < rate
      index = dynamic_length + ( (rate - dynamic_length) / 2 )
      sorted_citations[index] >= (length - index) ? rate = index : dynamic_length = index + 1
    end
    sorted_citations[dynamic_length] == 0 ? 0 : length - dynamic_length
  end
end
