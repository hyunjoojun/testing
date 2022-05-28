require_relative 'digital_clock'

RSpec.describe 'Digital clock' do
  [
    [1, '00:01'],
    [20, '00:20'],
    [120, '02:00'],
    [1439, '23:59'],
    [-50, '23:10'],
    [3000, '02:00'],
    [0, '00:00'],
    [-3000, '22:00'],
    [-1437, '00:03'],
    [-4231, '01:29']
  ].each do |example|
    it 'parses inputs' do
      input = example[0]
      expected_output = example[1]

      time = time_of_day(input)

      expect(time).to eq(expected_output)
    end
  end
end
