require 'rspec'
require 'catalog'
require 'cd'

describe '#' do
  it 'creates a new cd with artist' do
    cd = CD.new( "i dont know", "artist" )
    expect(cd.artist).to(eq('artist'))
    Catalog.clear
  end
  it 'stores a cd to the catalog' do
    cd = CD.new( 'video disk', "radio star" )
    Catalog.add_cd( cd )
    expect(Catalog.get_cds).to(eq([cd]))
  end
end
