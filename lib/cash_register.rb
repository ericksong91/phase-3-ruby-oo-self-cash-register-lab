
require 'pry'

class CashRegister

    attr_accessor :discount, :total, :items, :last_price

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
        @last_price = 0
    end

    def add_item(title, price, quantity = 1)
        @title = title
        @total = total + price * quantity
        
        quantity.times do
            @items << title
        end

        @last_price = price * quantity

        @items
    end

    def apply_discount
        @total = total - (total * discount/100)
        discount == 0 ? "There is no discount to apply." : "After the discount, the total comes to $#{@total}."
    end

    def void_last_transaction
        @items.pop()
        self.total -= self.last_price
    end
end