# @author: Houman Kargaran - 2017
# Defining Object

class Lilie

    # Defining an array of hashes to define the content of this product
    #
    # @param
    # @return [Array<Hash>] product details

    def self.packs
        [
            { :pack => 3, :price => 9.95 },
            { :pack => 6, :price => 16.95 },
            { :pack => 9, :price => 24.95 },
        ]
    end

    # Defining the code for each product entry
    #
    # @param
    # @return [String] product code

    def self.code
        'L09'
    end


end