# @author Houman Kargaran - 2017
# Singleton class to keep things clean

require 'singleton'

class LetSingleton
    include Singleton

    def class_array
        [Rose, Lilie, Tulip]
    end

    def sample_orders
        {
            valid_orders: [ '15 L09', '13 T58', '10 R12'],
            invalid_orders: [ '12 R*12', nil, ' ABM', '12 T58F' ],
            invalid_number_format:  ['111', '', nil],
            valid_product_hash: {:qty => '15', :code => 'L09'},
            order_series: [ '15 L09', nil, ' ABM', '12 T58F' ],
            code: 'T58'
        }
    end

    def sample_pack
        [
            {:pack => 3, :price => 5.95},
            {:pack => 5, :price => 9.95},
            {:pack => 9, :price => 16.99},
            {:code => 'T58'}
        ]
    end

    def all_of_combinations
        [ [2, 2, 2, 2, 2, 2, 2], [2, 2, 2, 8], [2, 2, 5, 5] ]
    end

    def package_combination_feed
        {
            :packs => [8,5,2],
            :qty => 14
        }
    end

    # {:pack=>5, :price=>6.99}
    # {:pack=>10, :price=>12.99}
    # {:code=>"R12"}

    def single_pack
        Order.fetch_from_inventory(sample_orders[:valid_orders].first)
    end

    def sample_order_ready
        {:summery=>{:total=>25.85, :sku_number=>"T58", :qty=>"13"}, :line_items=>[{:qty=>1, :pack=>3, :each_pack=>5.95}, {:qty=>2, :pack=>5, :each_pack=>9.95}]}
    end

    def sample_product
        [
            {:pack=>2, :price=>9.95},
            {:pack=>5, :price=>16.95},
            {:pack=>8, :price=>24.95},
            {:code=>"T58"}
        ]
    end


end