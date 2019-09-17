require 'results'

describe "results" do
    it "Returns 'Range: 00|00|00 Average: 00|00|00 Median: 00|00|00' when passed '00|00|00'" do
        expect(results('00|00|00')).to eq('Range: 00|00|00 Average: 00|00|00 Median: 00|00|00')
    end

    it "Returns '' when passed an empty string" do
        expect(results('')).to eq('')
    end

    it "Returns 'Range: 00|00|00 Average: 00|00|01 Median: 00|00|01' when passed '00|00|01'" do
        expect(results('00|00|01')).to eq('Range: 00|00|00 Average: 00|00|01 Median: 00|00|01')
    end

    it "Returns 'Range: 00|00|02 Average: 00|00|01 Median: 00|00|01' when passed '00|00|00, 00|00|01, 00|00|02'" do
        expect(results('00|00|00, 00|00|01, 00|00|02')).to eq('Range: 00|00|02 Average: 00|00|01 Median: 00|00|01')
    end

    it "Returns 'Range: 00|00|00 Average: 00|01|00 Median: 00|01|00' when passed '00|01|00, 00|01|00, 00|01|00'" do
        expect(results('00|00|00, 00|00|01, 00|00|02')).to eq('Range: 00|00|02 Average: 00|00|01 Median: 00|00|01')
    end

    it "Returns 'Range: 00|47|18 Average: 01|35|15 Median: 01|32|34' when passed '01|15|59, 1|47|6, 01|17|20, 1|32|34, 2|3|17'" do
        expect(results("01|15|59, 1|47|6, 01|17|20, 1|32|34, 2|3|17")).to eq("Range: 00|47|18 Average: 01|35|15 Median: 01|32|34")
    end
end