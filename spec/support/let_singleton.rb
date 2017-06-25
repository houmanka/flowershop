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
            valid_orders: ['10 R12', '15 L09', '13 T58'],
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


end