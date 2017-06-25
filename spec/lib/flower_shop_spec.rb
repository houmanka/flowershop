
require 'flower_shop'
require 'language'
require 'support/let_singleton'

# Note: Need to work on this.
describe FlowerShop do

    let (:singleton) {
        LetSingleton.instance
    }

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

        specify { expect { print('10 R12') }.to output.to_stdout }
        specify {
            FlowerShop.run
            expect { print('done') }.to output.to_stdout }

        it 'should receive `10 R12`' do
            fake_stdin('10 R12') do
                input = gets().chomp()
                expect(input).to eq('10 R12')
            end
        end
    end

end