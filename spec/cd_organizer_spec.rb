require 'rspec'
require 'catalog'
require 'cd'

describe '#' do
  it 'creates a new cd with artist' do
    cd = CD.new( "i dont know" )
    expect(cd.artist).to(eq("i dont know"))
  end
  it 'stores a cd to the catalog' do
    cd = CD.new( 'video disk' )
    Catalog.add_cd( cd )
    expect(Catalog.get_cds).to(eq([cd]))
  end
end
