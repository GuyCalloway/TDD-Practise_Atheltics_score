require 'results'

describe "results" do
    it "Returns 'Range: 00|00|00 Average: 00|00|00 Median: 00|00|00' when passed '00|00|00'" do
        expect(results('00|00|00')).to eq('Range: 00|00|00 Average: 00|00|00 Median: 00|00|00')
    end

    it "Returns '' when passed an empty string" do
        expect(results('')).to eq('')
    end
end