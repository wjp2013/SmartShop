class Classification < ActiveRecord::Base
  # extends ...................................................................
  # includes ..................................................................
  acts_as_list scope: :taxon
  # relationships .............................................................
  belongs_to :product, inverse_of: :classifications
  belongs_to :taxon, inverse_of: :classifications, touch: true
  # validations ...............................................................
  validates_uniqueness_of :taxon_id, scope: :product_id, message: :already_linked
  # callbacks .................................................................
  # scopes ....................................................................
  # additional config (i.e. accepts_nested_attribute_for etc...) ..............
  self.table_name = 'products_taxons'
  # class methods .............................................................
  # public instance methods ...................................................
  # protected instance methods ................................................
  # private instance methods ..................................................
end
