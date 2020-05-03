require 'alternating_case'

describe 'alternating_case' do
  context 'Default case - first eligible character is uppercase' do
    it 'returns AsCiI when passed ASCII' do
      expect(alternating_case('ASCII')).to eq('AsCiI')
    end
    it 'returns 42 when passed 42' do
      expect(alternating_case('42')).to eq('42')
    end
    it 'returns #InClUdE <iOsTrEaM> when passed #include <iostream>' do
      expect(alternating_case('#include <iostream>')).to eq('#InClUdE <iOsTrEaM>')
    end
    it 'returns A1b2 when passed A1B2' do
      expect(alternating_case('A1B2')).to eq('A1b2')
    end
    it 'returns lEaVe_My_SyMbOlS#!#&^%_aLoNe!!! when passed LEAVE_my_symbols#!#&^%_ALONE!!!' do
    expect(alternating_case('LEAVE_my_symbols#!#&^%_ALONE!!!')).to eq('LeAvE_mY_sYmBoLs#!#&^%_AlOnE!!!')
    end 
    it "returns 'ThIs ExAmPlE wIlL sTaRt WiTh UpPeRcAsE' when passed 'This example will start with uppercase'" do
      expect(alternating_case('A1B2')).to eq('A1b2')
    end
  end
  context 'First eligible character is lowercase' do
    it "returns 'tHiS eXaMpLe WiLl StArT wItH lOwErCaSe' when passed 'This example will start with lowercase'" do
      expect(alternating_case('This example will start with lowercase', 'Lower')).to eq('tHiS eXaMpLe WiLl StArT wItH lOwErCaSe')
    end
  end
end