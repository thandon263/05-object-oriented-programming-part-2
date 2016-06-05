 require_relative 'sales_taxe'


class Receipt < Item


  def initialize(item)
    @products = item
  end

  def calculate
    total = 0
    tax = 0
        @products.each { |product| tax += (product.price * 0.1)}
        @products.each  { |product| total += (product.price + (product.price * 0.1))}

      if @imported == true
        return @products.each { |product| total += (product.price + (product.price * 0.05))}
      end

        puts "Taxes: $#{tax.round(2)}"

        "Total: $#{total.round(2)}"
  end

  def output
    @products.each { |product| puts "#{product.name}: $#{product.price}\n"}
  end

end


item1 = Item.new("1 Bar One chocolate 35g", 45.10, false, true)
item2 = Item.new("1 Bottle of perfume 150g", 102.52, false, true)
item3 = Item.new("1 A packet of Headache pills 10g", 20.42, true, false)
item4 = Item.new("1 A Book of stories", 37.34, false, true)

receipt1 = Receipt.new([item1, item2, item3, item4])
receipt1.output
puts receipt1.calculate
