require 'results'

describe "results" do
    it "Returns 'Range: 00|00|00 Average: 00|00|00 Median: 00|00|00' when passed '00|00|00'" do
        expect(results('00|00|00')).to eq('Range: 00|00|00 Average: 00|00|00 Median: 00|00|00')
    end

    it "Returns '' when passed an empty string" do
        expect(results('')).to eq('')
    end

    it "Returns 'Range: 00|00|00 Average: 11|11|11 Median: 11|11|' when passed '11|11|11'" do
        expect(results('11|11|11')).to eq('Range: 00|00|00 Average: 11|11|11 Median: 11|11|11')
    end

    xit "Returns 'Range: 00|00|02 Average: 22|22|22 Median: 22|22|22' when passed '11|11|11, 22|22|22, 33|33|33'" do
        expect(results('11|11|11, 22|22|22, 33|33|33')).to eq('Range: 22|22|22 Average: 22|22|22 Median: 22|22|22')
    end
end