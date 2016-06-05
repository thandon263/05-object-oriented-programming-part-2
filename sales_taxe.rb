class Item

  attr_accessor :name, :price, :sales_tax, :imported

  def initialize(name, price, sales_tax, imported)
    @name = name
    @price = price
    @imported = imported
    @sales_tax = sales_tax
  end

  def add(item)

    @products = []
    @products << item

  end


end
