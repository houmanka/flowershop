require 'order'
require 'inventory'
require 'support/let_singleton'


describe Order do

    let(:order) {
        Order.new
    }

    let (:singleton) {
        LetSingleton.instance
    }

    before(:example) {
        singleton.sample_orders[:valid_orders].each do |item|
            order.has_been_recorded?(item)
        end
        @customer_order = order.customer_order
    }

    context 'Save the order' do
        it 'needs to record the order in an array' do
            valid_orders = singleton.sample_orders[:valid_orders]
            expect(order.customer_order).to match_array(valid_orders)
        end
    end

    it 'expects to extract each order' do
    end

    it 'expects the inventory via customer order to match the sample output' do

    end

    it 'expects to process customer order' do
    end

    describe 'Formatter' do
        # this behavior needs to be tested at the application. As it is the user output
        it 'expect to return String' do
        end
    end

end