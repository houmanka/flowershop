# @author: Houman Kargaran - 2017
# Defining Object

class Tulip

    # Defining an array of hashes to define the content of this product
    #
    # @param
    # @return [Array<Hash>] product details

    def self.packs
        [
            { :pack => 3, :price => 5.95 },
            { :pack => 5, :price => 9.95 },
            { :pack => 9, :price => 16.99 }
        ]

    end

    # Defining the code for each product entry
    #
    # @param
    # @return [String] product code

    def self.code
        'T58'
    end

end