require 'inventory'

class Order

    extend OrderWorker

    def initialize
        @customer_order = []
        @an_order_item = []
    end

    # Fetch an item upon giving it the code. It hydrates the customer order
    #
    # @param [String] - Full user input
    # @return [Boolean]

    def has_been_recorded?(order)
        unless Validation.validate(order.to_s) && Order.is_a_valid_item_code?(order.to_s)
            return false
        end
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


    # Output of Order Class to user
    #
    # @param
    # @return [String]

    def fulfill_order
        return ''
    end

    # collection of the User Order
    #
    # @param
    # @return [Array<Hash>]
    #   sample - [ { total: 17.98, sku_number: 'VS5', qty: 14 }, [ { qty: 1, pack: 5, each_pack: 8.99}, { qty: 3, pack: 3, each_pack: 8.99}]]

    def process_customer_order



        return []
    end

end