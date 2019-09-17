require 'results'

describe "results" do
    it "Returns 'Range: 00|00|00 Average: 00|00|00 Median: 00|00|00' when passed '00|00|00'" do
        expect(results('00|00|00')).to eq('Range: 00|00|00 Average: 00|00|00 Median: 00|00|00')
    end

    it "Returns '' when passed an empty string" do
        expect(results('')).to eq('')
    end

    xit "Returns 'Range: 00|00|00 Average: 11|11|11 Median: 11|11|11' when passed '11|11|11'" do
        expect(results('11|11|11')).to eq('Range: 00|00|00 Average: 11|11|11 Median: 11|11|11')
    end

    it "Returns 'Range: 00|00|02 Average: 00|00|01 Median: 00|00|01' when passed '00|00|00, 00|00|01, 00|00|02'" do
        expect(results('00|00|00, 00|00|01, 00|00|02')).to eq('Range: 00|00|02 Average: 00|00|01 Median: 00|00|01')
    end
end