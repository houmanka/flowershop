require 'inventory'

class Order
    def initialize
        @customer_order = []
        @an_order_item = []
    end

    # Fetch an item upon giving it the code. It hydrates the customer order
    #
    # @param [String] - Full user input
    # @return [Boolean]

    def has_been_recorded?(order)

        @customer_order.push order.to_s
        return  true
    end


    # Get method for Customer Order
    #
    # @param
    # @return [Array<String>]

    def customer_order
        @customer_order
    end
end