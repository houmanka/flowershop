
require 'flower_shop'

# Note: Need to work on this.
describe FlowerShop do


    it 'excepts the class exist' do
        expect(FlowerShop.new).to be_instance_of(FlowerShop)
    end


    context 'Application' do
        def fake_stdin(*args)
            begin
                $stdin = StringIO.new
                $stdin.puts(args.shift) until args.empty?
                $stdin.rewind
                yield
            ensure
                $stdin = STDIN
            end
        end


    end

end