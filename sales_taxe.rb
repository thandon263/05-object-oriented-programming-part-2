class Item

    @@counter = 0

  attr_accessor :name, :price, :imported

  def initialize(name, price, imported)
    @name = name
    @price = price
    @imported = imported
  end



      def self.products
        @@products
      end

end

class Receipt < Item



  def initialize(items)
    @products = items
  end

  def add(item)
    @@counter = @product.length
    @products = []
    @products << item

  end

  def calculate
    total = 0
    tax = 0
        @products.each do |product|
          tax += (product.price * 0.1)
        end
        @products.each do |product|
            total += (product.price + (product.price * 0.1))
        end

      if @imported == true
        return @products.each { |product| total += (product.price + (product.price * 0.05))}
      end
        puts "Taxes: $#{tax}"
        "Total: $#{total}"
  end

  def output
    @products.each do |product|
      puts "#{product.name}: $#{product.price}\n"
    end
  end
end

item1 = Item.new("Bar One chocolate 35g", 15.10, false)
item2 = Item.new("Bottle of perfume 150g", 102.52, true)
item3 = Item.new("A packet of Headache pills 10g", 20.42, false)
item4 = Item.new("A Book of stories", 7.34, true)

receipt1 = Receipt.new([item1, item2, item3, item4])
receipt1.output
puts receipt1.calculate
