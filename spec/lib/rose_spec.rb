
require 'rose'

describe Rose do
    let(:obj) { Rose }
    let(:expected_code) { 'R12' }

    it 'expects obj code to match to the expectation' do
        expect(obj.code).to eq(expected_code)
    end

    it 'expects obj packs to be Array' do
        expect(obj.packs).to be_instance_of(Array)
    end

    it 'expects to define obj packs' do
        obj.packs[0].keys
        expect(obj.packs).to satisfy{
            |v| v[0].keys.include?(:pack)
        }
    end

end