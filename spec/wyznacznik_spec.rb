require '../src/wyznacznik.rb'

require 'yaml'
require 'stringio'

def capture_matrix_size
  $stdin.gets.chomp
end

def capture_number
  $stdin.gets.chomp
end


describe 'capture_matrix_size' do
  before do
    $stdin = StringIO.new("3\n")
  end

  after do
    $stdin = STDIN
  end

  it "should be '3'" do
    expect(capture_matrix_size).to be == '3'
  end
end

describe 'function returns' do
  it 'wynik 0' do
    tab = [[1,2,3],[4,5,6],[7,8,9]]
    a = 3
    expect(wyznacznik(tab,a)).to eq(0)
  end
  it 'wynik 1' do
    tab = 3
    a = 1
    expect(wyznacznik(tab,a)).to eq(1)
  end
  it 'wynik 16' do
    tab = [[3,1,5],[8,2,7],[7,3,10]]
    a = 3
    expect(wyznacznik(tab,a)).to eq(16)
  end
  it 'wynik -61' do
    tab = [[2,9],[7,1]]
    a = 2
    expect(wyznacznik(tab,a)).to eq(-61)
  end
  it 'wynik -5' do
    tab = [[3,5],[7,10]]
    a = 2
    expect(wyznacznik(tab,a)).to eq(-5)
  end
  it 'wynik -5.25' do
    tab = [[1.5,2.5],[3,1.5]]
    a = 2
    expect(wyznacznik(tab,a)).to eq(-5.25)
  end

end
