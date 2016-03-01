class BookInStock
  def initialize(isbn, price)
    @isbn = isbn
    @price = Float(price)
  end

  def to_s
    return "ISBN: " + @isbn + "\tPrice:" + @price.to_s
  end
end
