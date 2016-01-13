class Catalog
  @@cd_list = []

  define_singleton_method(:add_cd) do |cd|
    @@cd_list.push( cd )
  end

  define_singleton_method(:get_cds) do
    return @@cd_list
  end

  define_singleton_method(:get_cds_by_artist) do |artist|
    found = []
    @@cd_list.each do |cd|
      if cd.artist == artist
        found.push( cd )
      end
    end
    return found
  end

  define_singleton_method(:clear) do
    @@cd_list = []
  end
end
