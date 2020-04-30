require 'alternating_case'

describe 'alternating_case' do
  it 'returns AsCiI when passed ASCII' do
    expect(alternating_case('ASCII')).to eq('AsCiI')
  end
  it 'returns 42 when passed 42' do
    expect(alternating_case('42')).to eq('42')
  end
  it 'returns #InClUdE <iOsTrEaM> when passed #include <iostream>' do
    expect(alternating_case('#include <iostream>')).to eq('#InClUdE <iOsTrEaM>')
  end
end