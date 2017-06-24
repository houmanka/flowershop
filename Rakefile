task :default => [:run]

desc 'Runs the Flower shop Application'
task 'run' do
    $LOAD_PATH.unshift(File.dirname(__FILE__), 'lib')
    require 'flowershop'

    FlowerShop.run
end