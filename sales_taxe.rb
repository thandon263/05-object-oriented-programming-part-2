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

class Receipt

  def initialize(items)
    @products = items
  end

  def calculate
    total = 0
    tax = 0
        @products.each { |product| tax += (product.price * 0.1)}
        @products.each  { |product| total += (product.price + (product.price * 0.1))}

      if @imported == true
        return @products.each { |product| total += (product.price + (product.price * 0.05))}
      end

        puts "Taxes: $#{tax}"

        "Total: $#{total}"
  end

  def output
    @products.each { |product| puts "#{product.name}: $#{product.price}\n"}
  end

end

item1 = Item.new("Bar One chocolate 35g", 15.10, false, true)
item2 = Item.new("Bottle of perfume 150g", 102.52, false, true)
item3 = Item.new("A packet of Headache pills 10g", 20.42, true, false)
item4 = Item.new("A Book of stories", 7.34, false, true)

receipt1 = Receipt.new([item1, item2, item3, item4])
receipt1.output
puts receipt1.calculate
