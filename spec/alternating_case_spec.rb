require 'alternating_case'

describe 'alternating_case' do
  it 'returns AsCiI when passed ASCII' do
    expect(alternating_case('ASCII')).to eq('AsCiI')
  end
end