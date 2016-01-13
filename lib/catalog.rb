class Catalog
  @@cd_list = []

  define_singleton_method(:add_cd) do |cd|
    @@cd_list.push( cd )
  end

  define_singleton_method(:get_cds) do
    return @@cd_list
  end
end
