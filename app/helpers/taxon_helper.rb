module TaxonHelper
 
  [:brands].each do |taxon_type|
    sort_type = :default
 
    if taxon_type.kind_of?(Hash)
      sort_type = taxon_type[:sort]
      taxon_type = taxon_type[:name]
    end
 
    define_method "#{taxon_type}_taxon" do
      Spree::Taxon.send(taxon_type)
    end
 
    define_method "navigation_#{taxon_type}_taxons" do
      children = send("#{taxon_type}_taxon").children
      children = children.sort_by(&:name) 
      children
    end
  end
 
end