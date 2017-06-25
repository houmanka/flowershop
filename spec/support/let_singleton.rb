# @author Houman Kargaran - 2017
# Singleton class to keep things clean

require 'singleton'

class LetSingleton
    include Singleton

    def class_array
        [Rose, Lilie, Tulip]
    end

end