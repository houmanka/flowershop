require 'order'
require 'order_worker'
require 'order_calculator'
require 'support/let_singleton'

describe OrderCalculator do

    # initialise it so when we go to order it acts the same way
    class Order
    end

    before(:each) do
        @order_class = Order.new
        @order_class.extend(OrderCalculator)
    end

    let (:singleton) {
        LetSingleton.instance
    }



    # this calculation method return always have the hash summary at first

    it 'expects to process the order in correct format return'  do
    end

    it 'expect to calculate all the possible combinations'   do

    end

    # it needs to accept the best picked package and calculate the price based on the package
    it 'expects to calculate the total price' do

    end


end